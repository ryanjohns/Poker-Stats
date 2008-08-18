class CreatePayouts < ActiveRecord::Migration
  def self.up
    create_table :payouts do |t|
      t.column :place, :integer
      t.column :points, :integer, :default=>0
      t.column :money, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :payout_structure_id, :integer
    end
  end

  def self.down
    drop_table :payouts
  end
end
