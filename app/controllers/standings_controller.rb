class StandingsController < ApplicationController

  def index
    order_by = params[:order_by] || "rank"
    order = params[:order] || "asc"

    if order_by == "name" and ["asc", "desc"].include? order
      order_by = "last_name"
    elsif !PlayerStat.new.respond_to? order_by or !["asc", "desc"].include? order
      order_by = "rank"
      order = "asc"
    end
    
    order_sql = "#{order_by} #{order}"
    order_sql << ", first_name #{order}" if order_by == "last_name"
    order_sql << ", rank asc" if order_by != "rank"
    
    series = Series.find(:first, :conditions => 'is_complete = false')
    @player_stats = PlayerStat.find(:all, :include=>:player, :conditions => "series_id = #{series.id} and rank > 0", :order => order_sql) rescue []
  end

end
