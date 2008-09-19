class EighthTourneyResults < ActiveRecord::Migration
  
  def self.up
    
    series = Series.find_or_create_by_name("Season 3")
    t = Tournament.create!(:series => series, :tournament_date => Date.new(2008, 9, 17), :num_entrants => 19)
    
    # create easy-to-use variables
    Player.find(:all).each do |player|
      eval("@"+player.name(:variablize => true)+"=player")
    end
    
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>19, :bounty_collector=>@shawn_green, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@michael_hinkson, :place=>18, :bounty_collector=>@mark_schmitz, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>17, :bounty_collector=>@michelle_heflin, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>16, :bounty_collector=>@kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@amir_manji, :place=>15, :bounty_collector=>@kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>14, :bounty_collector=>@mark_schmitz, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@paul_cho, :place=>13, :bounty_collector=>@erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>12, :bounty_collector=>@alex_farley, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@michelle_heflin, :place=>11, :bounty_collector=>@kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>10, :bounty_collector=>@laura_rody, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>9, :bounty_collector=>@andrew_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@alex_farley, :place=>8, :bounty_collector=>@kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@ryan_johns, :place=>7, :bounty_collector=>@andrew_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>6, :bounty_collector=>@kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@erik_fast, :place=>5, :bounty_collector=>@laura_rody, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>4, :bounty_collector=>@andrew_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@laura_rody, :place=>3, :bounty_collector=>@andrew_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>2, :bounty_collector=>@andrew_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>1, :fee_paid=>true, :update_player_stats=>false)
    
    PlayerStat.update_all_stats(series.id)
  end
  
  def self.down
    Tournament.find_by_tournament_date(Date.new(2008, 9, 17)).destroy
    PlayerStat.update_all_stats
  end
  
end