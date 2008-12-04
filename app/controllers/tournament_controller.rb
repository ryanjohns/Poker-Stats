class TournamentController < ApplicationController

  def index
    @series = Series.find(:all, :order => 'start_date DESC')

    @tournaments = []
    @series.each do |series|
      @tournaments[series.id] = Tournament.find_all_by_series_id(series.id, :order => 'tournament_date ASC')
    end
  end

  def view
    redirect_to :action => 'index' and return unless @tournament = Tournament.find(params[:id]) rescue false
    @results = Result.find_all_by_tournament_id(params[:id], :order => 'payout_id ASC')
    @results.sort { |a,b| a.payout.place <=> b.payout.place }
  end

  def start_tournament
    @series = Series.find(:all, :order => "start_date desc")
    if request.post?
      s = Series.find_by_id(params[:series_id].to_i)
      date = Date.civil(params[:date][:"start(1i)"].to_i, params[:date][:"start(2i)"].to_i, params[:date][:"start(3i)"].to_i)
      t = Tournament.create!(:series => s, :tournament_date => date, :num_entrants => params[:num_entrants].to_i)
      redirect_to result_entry_url(t)
    end
  end

end
