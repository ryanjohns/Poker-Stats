class MergeBountiesWithResults < ActiveRecord::Migration
  def self.up
    #drop_table :bounties
    #add_column :results, :bounty_collector_id, :integer
    #add_column :results, :tournament_id, :integer
    add_column :tournaments, :payout_structure_id, :integer
    add_column :payout_structures, :series_id, :integer
  end

  def self.down
    create_table :bounties do |t|
     t.column :bitch_id, :integer
     t.column :pwner_id, :integer
    end
    remove_column :results, :bounty_collector_id
    remove_column :results, :tournament_id
    remove_column :tournaments, :payout_structure_id
    remove_column :payout_structures, :series_id
  end
end
