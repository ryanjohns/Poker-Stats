class StandingsController < ApplicationController

  def index
    @order_by = params[:order_by] || "rank"
    @order = params[:order] || "asc"
    @order = "asc" if !["asc", "desc"].include? @order
    
    if @order_by != "last_name" and !PlayerStat.new.respond_to? @order_by
      @order_by = "rank"
    end
    
    order_sql = "#{@order_by} #{@order}"
    order_sql << ", first_name #{@order}" if @order_by == "last_name"
    order_sql << ", rank asc" if @order_by != "rank"
    
    @series = Series.find(:first, :conditions => 'is_complete = false')
    @player_stats = PlayerStat.find(:all, :include=>:player, :conditions => "series_id = #{@series.id} and rank > 0", :order => order_sql) rescue []
  end

end
