class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.column :player_id, :int
      t.column :payout_id, :int
      t.column :fee_paid, :boolean
      t.column :bounties, :integer, :default => 0, :null => false
      t.column :money_won, :decimal, :precision => 8, :scale => 2, :default => 0
    end
  end

  def self.down
    drop_table :results
  end
end
