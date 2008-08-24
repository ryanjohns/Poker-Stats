class Result < ActiveRecord::Base
  
  belongs_to :player
  belongs_to :payout
  belongs_to :tournament
  
  attr_reader :place_attr
  attr_reader :bounty_collector_attr
  validates_presence_of :player_id, :tournament_id
  validates_each :place do |record, attr, value|
    if !value.is_a? Fixnum or value <= 0
      record.errors.add(attr, "must be a positive integer")
    end
  end
  validates_each :bounty_collector do |record, attr, value|
    if record.place == 1
      if !value.nil?
        record.errors.add(attr, "must be empty if place is 1")
      end
    elsif value.nil?
      record.errors.add(attr, "must be set if place is not 1")
    end
  end
  
  def place=(value)
    self.payout_id = (Payout.find_by_place_and_payout_structure_id(value, tournament.payout_structure_id).id rescue nil)
    self.payout = nil
    @place_attr = value
  end
  
  def place
    return @place_attr if @place_attr
    @place_attr = (payout.place rescue nil)
  end
  
  def bounty_collector=(value)
    if !value.is_a? Player
      self.bounty_collector_id = nil
    else
      self.bounty_collector_id = (value.id rescue nil)
    end
    @bounty_collector_attr = value
  end
  
  def bounty_collector
    return @bounty_collector_attr if @bounty_collector_attr
    if bounty_collector_id
      @bounty_collector_attr = Player.find_by_id(bounty_collector_id)
    else
      @bounty_collector_attr = nil
    end
    @bounty_collector_attr
  end
  
  def bounty_collector_id=(value)
    @bounty_collector_attr = nil
    super(value)
  end

  def before_save
    self.payout = Payout.find_by_place_and_payout_structure_id(@place_attr, tournament.payout_structure_id)
    self.bounties = Result.find_all_by_tournament_id_and_bounty_collector_id(tournament.id, player.id).size
    self.money_won = 25 * self.tournament.num_entrants * self.payout.percentage * 0.01
    if !(self.money_won % 5 == 0)
      if (self.payout.place % 2 == 0) 
        self.money_won -= 2.5
      else
        self.money_won += 2.5
      end
    end
  end
  
  def after_save
    # update bounties for bounty_collector
    if bounty_collector_id
      bounty_stats = PlayerStat.find_or_create_by_player_id_and_series_id(bounty_collector_id, tournament.series_id)
      bounty_stats.update_stats
    end
    
    # now update this player's stats
    stats = PlayerStat.find_or_create_by_player_id_and_series_id(player_id, tournament.series_id)
    stats.update_stats
    
    PlayerStat.rank_all_stats
  end
end
