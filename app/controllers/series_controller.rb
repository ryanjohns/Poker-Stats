class SeriesController < ApplicationController
  
  def index
    @series = Series.find(:all, :order => 'start_date DESC')
  end
  
  def view
    redirect_to :action => 'index' and return unless @series = Series.find(params[:id]) rescue false
    @order_by = params[:order_by] || "rank"
    @order = params[:order] || "asc"
    @order = "asc" if !["asc", "desc"].include? @order
    
    if @order_by != "last_name" and !PlayerStat.new.respond_to? @order_by
      @order_by = "rank"
    end
    
    order_sql = "#{@order_by} #{@order}"
    order_sql << ", first_name #{@order}" if @order_by == "last_name"
    order_sql << ", rank asc" if @order_by != "rank"
    
    @player_stats = PlayerStat.find(:all, :include=>:player, :conditions => "series_id = #{@series.id} and rank > 0", :order => order_sql) rescue []
  end
  
  def current
    params[:id] = series_id = Series.find(:first, :conditions => 'is_complete = false').id
    view
    render :action => 'view'
  end
  
  
end
