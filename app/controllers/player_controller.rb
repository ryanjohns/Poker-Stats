class PlayerController < ApplicationController
  
  def index
    @players = Player.find(:all, :order => 'last_name')
  end
  
  def edit
    @player = Player.find_by_id(params[:id]) || Player.new
    if request.post?
      @player.attributes = params[:player]
      redirect_to :action => 'index' if @player.save
    end
  end
  
  def view
    redirect_to :controller =>'standings', :action => 'index' and return unless @player = Player.find(params[:id]) rescue false
    @results = []
    Result.find_all_by_player_id(params[:id]).each do |result|
      begin
        @results[result.tournament.series.id] << result
      rescue
        @results[result.tournament.series.id] = [result]
      end
    end
    @results.compact!
    @results.each do |series_results|
      series_results.sort { |a,b| a.tournament.tournament_date <=> b.tournament.tournament_date }
    end
  end
end
