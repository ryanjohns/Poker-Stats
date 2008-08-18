class PlayerStat < ActiveRecord::Base
  
  belongs_to :series
  belongs_to :player
  
  validates_presence_of :player_id, :series_id
  validates_presence_of :profit, :winnings, :roi, :top_ten_points, :total_points, :avg_points, :num_played
  validates_presence_of :total_buy_ins, :num_firsts, :num_cashes, :num_bounties, :avg_finish, :num_fees, :percent_cash
  
  class << self
    def update_all_stats
      find(:all).each do |ps|
        ps.update_stats
      end
      rank_all_stats
    end
    
    def rank_all_stats
      rank = 1
      find(:all, :order=>"top_ten_points desc, roi desc").each do |ps|
        ps.rank = rank
        ps.save!
        rank += 1
      end
    end
  end
  
  def update_stats
    top_ten_points_arr = []
    finish_spot_total = 0
    bounties_total = 0
    # reset all to 0
    self.attributes.delete_if{|key,val| ["id", "player_id", "series_id"].include? key}.each do |key, val|
      send("#{key}=", 0)
    end
    series.tournaments.each do |tourney|
      result = Result.find_by_tournament_id_and_player_id(tourney.id, player_id)
      if result
        payout = result.payout
        self.winnings += payout.money
        self.total_points += payout.points
        if top_ten_points_arr.size < 10
          top_ten_points_arr << payout.points
          self.top_ten_points += payout.points
        elsif payout.points > top_ten_points_arr.min
          top_ten_points_arr[top_ten_points_arr.index(top_ten_points_arr.min)] = payout.points
          self.top_ten_points = top_ten_points_arr.sum
        end
        self.num_played += 1
        self.total_buy_ins += 25
        self.num_firsts += 1 if payout.place == 1
        self.num_cashes += 1 if payout.money > 0
        finish_spot_total += payout.place
        self.num_fees += 1 if result.fee_paid?
        self.total_fees += 5 if result.fee_paid?
      end
      bounties_total += Result.find_all_by_tournament_id_and_bounty_collector_id(tourney.id, player_id).size
    end
    self.profit = winnings - total_buy_ins
    self.roi = (profit*1.0/total_buy_ins * 100 rescue 0)
    self.avg_points = (total_points*1.0/num_played rescue 0)
    self.num_bounties = bounties_total
    self.avg_finish = (finish_spot_total*1.0/num_played rescue 0)
    self.percent_cash = (num_cashes*1.0/num_played * 100 rescue 0)
    save!
  end
end