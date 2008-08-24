class AddStartDateToSeries < ActiveRecord::Migration
  def self.up
    add_column :series, :start_date, :datetime
    series = Series.find(1)
    series.start_date = DateTime.parse("07/30/2008")
    series.save!
  end

  def self.down
    remove_column :series, :start_date
  end
end
