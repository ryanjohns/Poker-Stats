class AddBountiesToResults < ActiveRecord::Migration
  
  def self.up
    add_column :results, :bounties, :integer, :default => 0, :null => false
    
    Tournament.find(:all).each do |tournament|
      results = tournament.results
      results.each do |result|
        unless result.bounty_collector_id.blank?
          bounty_collector = results.find_by_player_id(result.bounty_collector_id)
          bounty_collector.bounties = bounty_collector.bounties + 1 rescue 1
          bounty_collector.save!
        end
      end
    end
  end

  def self.down
    remove_column :results, :bounties
  end
end