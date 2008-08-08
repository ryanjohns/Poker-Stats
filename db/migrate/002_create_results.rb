class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.column :player_id, :int
      t.column :payout_id, :int
      t.column :fee_paid, :boolean
    end
  end

  def self.down
    drop_table :results
  end
end
