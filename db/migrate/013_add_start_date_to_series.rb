class AddStartDateToSeries < ActiveRecord::Migration
  def self.up
    add_column :series, :start_date, :datetime
  end

  def self.down
    remove_column :series, :start_date
  end
end
