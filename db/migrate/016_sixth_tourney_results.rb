class SixthTourneyResults < ActiveRecord::Migration
  
  def self.up
    
    series = Series.find_or_create_by_name("Season 3")
    t = Tournament.create!(:series => series, :tournament_date => Date.new(2008, 9, 3), :num_entrants => 21)
    
    # create easy-to-use variables
    Player.find(:all).each do |player|
      eval("@"+player.name(:variablize => true)+"=player")
    end
    
    @paul_cho = Player.find_or_create_by_first_name_and_last_name("Paul", "Cho")
    @michael_hinkson = Player.find_or_create_by_first_name_and_last_name("Michael", "Hinkson")

    Result.create!(:tournament=>t, :player=>@mary_hurbi, :place=>21, :bounty_collector=>@michael_hinkson, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>20, :bounty_collector=>@erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>19, :bounty_collector=>@michael_hinkson, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>18, :bounty_collector=>@scott_dedoes, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@amir_manji, :place=>17, :bounty_collector=>@kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>16, :bounty_collector=>@michael_hinkson, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@justin_marchand, :place=>15, :bounty_collector=>@michael_hinkson, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>14, :bounty_collector=>@erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>13, :bounty_collector=>@john_grinzivich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>12, :bounty_collector=>@shawn_green, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>11, :bounty_collector=>@alex_farley, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>10, :bounty_collector=>@john_grinzivich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>9, :bounty_collector=>@bethany_cermak, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@zack_messer, :place=>8, :bounty_collector=>@michael_hinkson, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@alex_farley, :place=>7, :bounty_collector=>@john_grinzivich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@michael_hinkson, :place=>6, :bounty_collector=>@john_grinzivich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@laura_rody, :place=>5, :bounty_collector=>@john_grinzivich, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@paul_cho, :place=>4, :bounty_collector=>@erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>3, :bounty_collector=>@erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>2, :bounty_collector=>@erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>@erik_fast, :place=>1, :fee_paid=>true, :update_player_stats=>false)
    
    PlayerStat.update_all_stats(series.id)
  end
  
  def self.down
    Tournament.find_by_tournament_date(Date.new(2008, 9, 3)).destroy
    Player.find_by_first_name_and_last_name("Paul", "Cho").destroy
    Player.find_or_create_by_first_name_and_last_name("Michael", "Hinkson").destroy
    PlayerStat.update_all_stats
  end
  
end