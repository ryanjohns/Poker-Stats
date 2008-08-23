class TournamentController < ApplicationController
  
  def index
    @series = Series.find(:all)
    
    @tournaments = []
    @series.each do |series|
      @tournaments[series.id] = Tournament.find_all_by_series_id(series.id)
    end
    
  end
  
  def view
    redirect_to :action => 'index' and return unless @tournament = Tournament.find(params[:id]) rescue false
    @results = Result.find_all_by_tournament_id(params[:id], :order => 'payout_id ASC')
    @results.sort { |a,b| a.payout.place  <=> b.payout.place }
  end
  
  
end
