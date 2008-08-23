class CreatePayoutStructures < ActiveRecord::Migration
  def self.up
    create_table :payout_structures do |t|
      t.column :min_players, :integer
      t.column :max_players, :integer
    end
  end

  def self.down
    drop_table :payout_structures
  end
end
