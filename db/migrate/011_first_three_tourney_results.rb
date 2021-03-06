class FirstThreeTourneyResults < ActiveRecord::Migration
  
  # To test the automation of player stats generation (for player_stats table),
  # this can be run, reversed, and re-run as needed
  def self.up
    series = Series.find_or_create_by_name("Season 3")
    
    # Week 1
    t = Tournament.create!(:series=>series, :tournament_date=>Date.new(2008, 7, 30), :num_entrants=>12)
    
    andria_smith = Player.create!(:first_name=>"Andria", :last_name=>"Smith")
    eric_tipton = Player.create!(:first_name=>"Eric", :last_name=>"Tipton")
    Result.create!(:tournament=>t, :player=>andria_smith, :place=>12, :bounty_collector=>eric_tipton, :fee_paid=>true, :update_player_stats=>false)
    
    amir_manji = Player.create!(:first_name=>"Amir", :last_name=>"Manji")
    shawn_green = Player.create!(:first_name=>"Shawn", :last_name=>"Green")
    Result.create!(:tournament=>t, :player=>amir_manji, :place=>11, :bounty_collector=>shawn_green, :fee_paid=>true, :update_player_stats=>false)
    
    erik_fast = Player.create!(:first_name=>"Erik", :last_name=>"Fast")
    Result.create!(:tournament=>t, :player=>erik_fast, :place=>10, :bounty_collector=>eric_tipton, :fee_paid=>true, :update_player_stats=>false)
    
    bethany_cermak = Player.create!(:first_name=>"Bethany", :last_name=>"Cermak")
    kristy_arnett = Player.create!(:first_name=>"Kristy", :last_name=>"Arnett")
    Result.create!(:tournament=>t, :player=>bethany_cermak, :place=>9, :bounty_collector=>kristy_arnett, :fee_paid=>true, :update_player_stats=>false)

    Result.create!(:tournament=>t, :player=>eric_tipton, :place=>8, :bounty_collector=>kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    
    ryan_johns = Player.create!(:first_name=>"Ryan", :last_name=>"Johns")
    ryan_runge = Player.create!(:first_name=>"Ryan", :last_name=>"Runge")
    Result.create!(:tournament=>t, :player=>ryan_johns, :place=>7, :bounty_collector=>ryan_runge, :fee_paid=>true, :update_player_stats=>false)
    
    josh_smith = Player.create!(:first_name=>"Josh", :last_name=>"Smith")
    lizzy_morone = Player.create!(:first_name=>"Lizzy", :last_name=>"Morone")
    Result.create!(:tournament=>t, :player=>josh_smith, :place=>6, :bounty_collector=>lizzy_morone, :fee_paid=>true, :update_player_stats=>false)

    ronnie_morone = Player.create!(:first_name=>"Ronnie", :last_name=>"Morone")    
    Result.create!(:tournament=>t, :player=>ryan_runge, :place=>5, :bounty_collector=>ronnie_morone, :fee_paid=>true, :update_player_stats=>false)

    Result.create!(:tournament=>t, :player=>kristy_arnett, :place=>4, :bounty_collector=>shawn_green, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>lizzy_morone, :place=>3, :bounty_collector=>shawn_green, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>ronnie_morone, :place=>2, :bounty_collector=>shawn_green, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>shawn_green, :place=>1, :fee_paid=>true, :update_player_stats=>false)
    
    # Week 2
    t = Tournament.create!(:series=>series, :tournament_date=>Date.new(2008, 8, 6), :num_entrants=>17)
    
    brian_fidler = Player.create!(:first_name=>"Brian", :last_name=>"Fidler")
    Result.create!(:tournament=>t, :player=>brian_fidler, :place=>17, :bounty_collector=>erik_fast, :fee_paid=>true, :update_player_stats=>false)
    
    Result.create!(:tournament=>t, :player=>eric_tipton, :place=>16, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>bethany_cermak, :place=>15, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)

    julio_rodriguez = Player.create!(:first_name=>"Julio", :last_name=>"Rodriguez")
    laura_rody = Player.create!(:first_name=>"Laura", :last_name=>"Rody")
    Result.create!(:tournament=>t, :player=>julio_rodriguez, :place=>14, :bounty_collector=>laura_rody, :fee_paid=>true, :update_player_stats=>false)

    danny_egelhoff = Player.create!(:first_name=>"Danny", :last_name=>"Egelhoff")
    Result.create!(:tournament=>t, :player=>shawn_green, :place=>13, :bounty_collector=>danny_egelhoff, :fee_paid=>true, :update_player_stats=>false)
    
    mark_schmitz = Player.create!(:first_name=>"Mark", :last_name=>"Schmitz")
    Result.create!(:tournament=>t, :player=>mark_schmitz, :place=>12, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)
    
    Result.create!(:tournament=>t, :player=>kristy_arnett, :place=>11, :bounty_collector=>laura_rody, :fee_paid=>true, :update_player_stats=>false)

    tim_resnik = Player.create!(:first_name=>"Tim", :last_name=>"Resnik")
    Result.create!(:tournament=>t, :player=>tim_resnik, :place=>10, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)

    andrew_moreno = Player.create!(:first_name=>"Andrew", :last_name=>"Moreno")
    Result.create!(:tournament=>t, :player=>andrew_moreno, :place=>9, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)

    Result.create!(:tournament=>t, :player=>ronnie_morone, :place=>8, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>lizzy_morone, :place=>7, :bounty_collector=>erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>danny_egelhoff, :place=>6, :bounty_collector=>amir_manji, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>laura_rody, :place=>5, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)

    steve_radulovich = Player.create!(:first_name=>"Steve", :last_name=>"Radulovich")
    Result.create!(:tournament=>t, :player=>steve_radulovich, :place=>4, :bounty_collector=>erik_fast, :fee_paid=>true, :update_player_stats=>false)

    Result.create!(:tournament=>t, :player=>amir_manji, :place=>3, :bounty_collector=>erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>ryan_johns, :place=>2, :bounty_collector=>erik_fast, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>erik_fast, :place=>1, :fee_paid=>true, :update_player_stats=>false)

    # Week 3
    t = Tournament.create!(:series=>series, :tournament_date=>Date.new(2008, 8, 13), :num_entrants=>16)
    
    Result.create!(:tournament=>t, :player=>shawn_green, :place=>16, :bounty_collector=>bethany_cermak, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>erik_fast, :place=>15, :bounty_collector=>lizzy_morone, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>brian_fidler, :place=>14, :bounty_collector=>eric_tipton, :fee_paid=>true, :update_player_stats=>false)

    tony_moreno = Player.create!(:first_name=>"Tony", :last_name=>"Moreno")
    Result.create!(:tournament=>t, :player=>ronnie_morone, :place=>13, :bounty_collector=>tony_moreno, :fee_paid=>true, :update_player_stats=>false)
    
    Result.create!(:tournament=>t, :player=>lizzy_morone, :place=>12, :bounty_collector=>tony_moreno, :fee_paid=>true, :update_player_stats=>false)

    michelle_heflin = Player.create!(:first_name=>"Michelle", :last_name=>"Heflin")
    Result.create!(:tournament=>t, :player=>bethany_cermak, :place=>11, :bounty_collector=>michelle_heflin, :fee_paid=>true, :update_player_stats=>false)

    zach_messer = Player.create!(:first_name=>"Zack", :last_name=>"Messer")
    Result.create!(:tournament=>t, :player=>zach_messer, :place=>10, :bounty_collector=>ryan_johns, :fee_paid=>true, :update_player_stats=>false)

    Result.create!(:tournament=>t, :player=>danny_egelhoff, :place=>9, :bounty_collector=>michelle_heflin, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>steve_radulovich, :place=>8, :bounty_collector=>tony_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>eric_tipton, :place=>7, :bounty_collector=>tony_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>laura_rody, :place=>6, :bounty_collector=>tony_moreno, :fee_paid=>true, :update_player_stats=>false)
    
    alex_farley = Player.create!(:first_name=>"Alex", :last_name=>"Farley")
    Result.create!(:tournament=>t, :player=>alex_farley, :place=>5, :bounty_collector=>amir_manji, :fee_paid=>true, :update_player_stats=>false)

    Result.create!(:tournament=>t, :player=>ryan_johns, :place=>4, :bounty_collector=>tony_moreno, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>michelle_heflin, :place=>3, :bounty_collector=>amir_manji, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>tony_moreno, :place=>2, :bounty_collector=>amir_manji, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>amir_manji, :place=>1, :fee_paid=>true, :update_player_stats=>false)
    
    PlayerStat.update_all_stats(series.id)
  end

  def self.down
    Player.destroy_all
  end
end