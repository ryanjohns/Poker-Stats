class CreateTournaments < ActiveRecord::Migration
  def self.up
    create_table :tournaments do |t|
      t.column :tournament_date, :datetime
      t.column :series_id, :integer
      t.column :num_entrants, :integer
    end
  end

  def self.down
    drop_table :tournaments
  end
end
