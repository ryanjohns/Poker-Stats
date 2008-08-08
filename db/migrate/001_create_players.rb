class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.column :first_name, :string
      t.column :last_name, :string
    end
  end

  def self.down
    drop_table :players
  end
end
