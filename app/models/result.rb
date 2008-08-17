class Result < ActiveRecord::Base
  
  belongs_to :player
  belongs_to :payout
  belongs_to :tournament
  
  attr_accessor :place
  validates_presence_of :player_id, :tournament_id, :place, :fee_paid
  validates_each :bounty_collector_id do |record, attr, value|
    if record.place == 1
      if !value.nil?
        record.errors.add(attr, "must be empty if place is 1")
      end
    elsif value.nil?
      record.errors.add(attr, "must be set if place is not 1")
    end
  end
  validates_each :place do |record, attr, value|
    if !value.is_a? Fixnum or value <= 0
      self.errors.add(attr, "must be a positive integer")
    end
  end
  
  def bounty_collector=(value)
    if !value.is_a? Player
      self.errors.add(:bounty_collector, "must be a player record")
      return false
    else
      self.bounty_collector_id = value.id
      return value
    end
  end
  
  def bounty_collector
    return Player.find_by_id(bounty_collector_id) rescue nil
  end

  def before_save
    self.payout_id = Payout.find_by_place_and_payout_structure_id(@place, tournament.payout_structure_id).id
  end
  
  def after_create
    # update bounties for bounty_collector
    if bounty_collector_id
      bounty_stats = PlayerStat.find_or_create_by_player_id_and_series_id(bounty_collector_id, tournament.series_id)
      bounty_stats.num_bounties += 1
      bounty_stats.save!
    end
    
    # now update this player's stats
    stats = PlayerStat.find_or_create_by_player_id_and_series_id(player_id, tournament.series_id)
    stats.winnings += payout.money
    # -- TODO: the rest of the stats
    stats.save!
  end
end
