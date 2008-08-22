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
    
    @results.each do |result|
      unless result.bounty_collector_id.blank?
        bounty_collector = @results.find { |bc| bc.player_id == result.bounty_collector_id }
        bounty_collector['bounties'] = bounty_collector['bounties'] + 1 rescue 1
      end
      result['bounties'] ||= 0
    end
    
  end
  
  
end
