class CreatePayoutStructures < ActiveRecord::Migration
  def self.up
    create_table :payout_structures do |t|
      t.column :num_players, :integer
    end
  end

  def self.down
    drop_table :payout_structures
  end
end
