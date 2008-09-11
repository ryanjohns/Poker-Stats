class SeventhTourneyResults < ActiveRecord::Migration
  
  def self.up
    
    series = Series.find_or_create_by_name("Season 3")
    t = Tournament.create!(:series => series, :tournament_date => Date.new(2008, 9, 10), :num_entrants => 19)
    
    # create easy-to-use variables
    Player.find(:all).each do |player|
      eval("@"+player.name(:variablize => true)+"=player")
    end
    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>19, :bounty_collector=>@michael_hinkson, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>18, :bounty_collector=>@alex_farley, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>17, :bounty_collector=>@tony_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@michelle_heflin, :place=>16, :bounty_collector=>@alex_farley, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@erik_fast, :place=>15, :bounty_collector=>@alex_farley, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>14, :bounty_collector=>@justin_marchand, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@ryan_johns, :place=>13, :bounty_collector=>@eric_tipton, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>12, :bounty_collector=>@scott_dedoes, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>11, :bounty_collector=>@tony_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@michael_hinkson, :place=>10, :bounty_collector=>@steve_radulovich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@paul_cho, :place=>9, :bounty_collector=>@steve_radulovich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@justin_marchand, :place=>8, :bounty_collector=>@steve_radulovich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@zack_messer, :place=>7, :bounty_collector=>@steve_radulovich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@amir_manji, :place=>6, :bounty_collector=>@steve_radulovich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@alex_farley, :place=>5, :bounty_collector=>@scott_dedoes, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>4, :bounty_collector=>@scott_dedoes, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>3, :bounty_collector=>@scott_dedoes, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>2, :bounty_collector=>@steve_radulovich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>1, :fee_paid=>true, :update_player_stats=>false)
    
    PlayerStat.update_all_stats(series.id)
  end
  
  def self.down
    Tournament.find_by_tournament_date(Date.new(2008, 9, 10)).destroy
    PlayerStat.update_all_stats
  end
  
end