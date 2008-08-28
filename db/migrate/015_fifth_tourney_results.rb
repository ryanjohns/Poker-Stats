class FourthTourneyResults < ActiveRecord::Migration
  
  def self.up
    
    series = Series.find_or_create_by_name("Season 3")
    
    # create easy-to-use variables
    Player.find(:all).each do |player|
      eval("@"+player.name(:variablize => true)+"=player")
    end
    
    # Week 4
    t = Tournament.create!(:series=>series, :tournament_date=>Date.new(2008, 8, 27), :num_entrants=>15)
    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>15, :bounty_collector=>@brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>14, :bounty_collector=>@justin_marchand, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@amir_manji, :place=>13, :bounty_collector=>@justin_marchand, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>12, :bounty_collector=>@erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>11, :bounty_collector=>@michelle_heflin, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>10, :bounty_collector=>@bethany_cermak, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@erik_fast, :place=>9, :bounty_collector=>@michelle_heflin, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@ryan_johns, :place=>8, :bounty_collector=>@alex_farley, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>7, :bounty_collector=>@justin_marchand, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>6, :bounty_collector=>@zack_messer, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@michelle_heflin, :place=>5, :bounty_collector=>@zack_messer, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@laura_rody, :place=>4, :bounty_collector=>@zack_messer, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@zack_messer, :place=>3, :bounty_collector=>@justin_marchand, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@alex_farley, :place=>2, :bounty_collector=>@justin_marchand, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@justin_marchand, :place=>1, :fee_paid=>true, :update_player_stats=>false)
    
    PlayerStat.update_all_stats(series.id)
  end
  
  def self.down
    Tournament.find_by_tournament_date(Date.new(2008, 8, 27)).destroy
    PlayerStat.update_all_stats
  end
  
end