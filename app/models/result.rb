class Result < ActiveRecord::Base
  
  belongs_to :player
  belongs_to :payout
  belongs_to :tournament
  
  validates_presence_of :player_id, :payout_id, :tournament_id, :fee_paid
  validates_presence_of :bounty_collector_id, :if=>Proc.new{|rec|rec.payout.place != 1}
  validates_each :bounty_collector_id do |record, attr, value|
    if record.payout.place == 1
      if !value.nil?
        record.errors.add(attr, "must be empty if place is 1")
      end
    elsif value.nil?
      record.errors.add(attr, "must be set if place is not 1")
    end
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
