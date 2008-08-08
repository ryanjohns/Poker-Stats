class CreateBounties < ActiveRecord::Migration
  def self.up
    create_table :bounties do |t|
      t.column :bitch_id, :integer
      t.column :pwner_id, :integer
    end
  end

  def self.down
    drop_table :bounties
  end
end
