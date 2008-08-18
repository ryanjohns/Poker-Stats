class CreatePlayerStats < ActiveRecord::Migration
  def self.up
    create_table :player_stats do |t|
      t.column :series_id, :integer
      t.column :player_id, :integer
      t.column :profit, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :winnings, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :roi, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :top_ten_points, :integer, :default => 0
      t.column :total_points, :integer, :default => 0
      t.column :avg_points, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :num_played, :integer, :default => 0
      t.column :total_buy_ins, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :num_firsts, :integer, :default => 0
      t.column :num_cashes, :integer, :default => 0
      t.column :num_bounties, :integer, :default => 0
      t.column :avg_finish, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :num_fees, :integer, :default => 0
      t.column :total_fees, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :percent_cash, :decimal, :precision => 8, :scale => 2, :default => 0
    end
  end

  def self.down
    drop_table :player_stats
  end
end
