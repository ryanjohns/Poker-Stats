class StandingsController < ApplicationController

  def index
    series = Series.find(:first, :conditions => 'is_complete = false')
    @players = PlayerStat.find(:all, :conditions => "series_id = #{series.id}", :order => 'top_ten_points desc') rescue []
  end

end
