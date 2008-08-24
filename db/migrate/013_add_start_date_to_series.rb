class AddStartDateToSeries < ActiveRecord::Migration
  def self.up
    add_column :series, :start_date, :datetime, :null => false
    series = Series.find_by_name("Season 3")
    series.start_date = DateTime.parse("07/30/2008")
    series.save!
  end

  def self.down
    remove_column :series, :start_date
  end
end
