class ResultController < ApplicationController
  
  def enter_result
    flash.now[:error] = "You must give a tournament_id" and return if params[:id].blank?
    @tournament = Tournament.find_by_id(params[:id].to_i)
    flash.now[:error] = "You must give a valid tournament_id" and return if @tournament.nil?
    flash.now[:error] = "Tournament is complete" and return if @tournament.num_entrants == Result.find_all_by_tournament_id(@tournament.id).size
    @players = Player.find(:all, :order => 'last_name asc')
    @current_results = Result.find_all_by_tournament_id(@tournament.id, :order => "id desc")
    if request.post?
      player = Player.find_by_id(params[:player_id].to_i)
      bounty_collector = Player.find_by_id(params[:bounty_collector_id].to_i)
      fee_paid = (params[:fee_paid] == "1" ? true : false)
      Result.create!(:tournament => @tournament, :player => player, :bounty_collector => bounty_collector, :fee_paid => fee_paid, :place => params[:place].to_i, :update_player_stats => true)
      redirect_to :controller => 'tournament', :action => 'view', :id => @tournament.id if bounty_collector.nil?
    end
  end
  
  def get_fees_paid_for_player
    stats = PlayerStat.find_by_player_id_and_series_id(params[:player_id].to_i, params[:series_id].to_i)
    render :text => (stats.num_fees.to_s rescue '0')
  end
end
