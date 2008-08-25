class FourthTourneyResults < ActiveRecord::Migration
  
  def self.up
    
    series = Series.find_or_create_by_name("Season 3")
    
    # Week 4
    t = Tournament.create!(:series=>series, :tournament_date=>Date.new(2008, 8, 20), :num_entrants=>15)
    
    shawn_green = Player.find_or_create_by_first_name_and_last_name("Shawn", "Green")
    zack_messer = Player.find_or_create_by_first_name_and_last_name("Zack", "Messer")
    Result.create!(:tournament=>t, :player=>shawn_green, :place=>15, :bounty_collector=>zack_messer, :fee_paid=>true, :update_player_stats=>false)
    
    ronnie_morone = Player.find_or_create_by_first_name_and_last_name("Ronnie", "Morone")
    kristy_arnett = Player.find_or_create_by_first_name_and_last_name("Kristy", "Arnett")
    Result.create!(:tournament=>t, :player=>ronnie_morone, :place=>14, :bounty_collector=>kristy_arnett, :fee_paid=>true, :update_player_stats=>false)
    
    scott_dedoes = Player.find_or_create_by_first_name_and_last_name("Scott", "Dedoes")
    brian_fidler = Player.find_or_create_by_first_name_and_last_name("Brian", "Fidler")
    Result.create!(:tournament=>t, :player=>scott_dedoes, :place=>13, :bounty_collector=>brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    
    ryan_johns = Player.find_or_create_by_first_name_and_last_name("Ryan", "Johns")
    lizzy_morone = Player.find_or_create_by_first_name_and_last_name("Lizzy", "Morone")
    Result.create!(:tournament=>t, :player=>ryan_johns, :place=>12, :bounty_collector=>lizzy_morone, :fee_paid=>true, :update_player_stats=>false)
    
    bethany_cermak = Player.find_or_create_by_first_name_and_last_name("Bethany", "Cermak")
    mark_schmitz = Player.find_or_create_by_first_name_and_last_name("Mark", "Schmitz")
    Result.create!(:tournament=>t, :player=>bethany_cermak, :place=>11, :bounty_collector=>mark_schmitz, :fee_paid=>true, :update_player_stats=>false)
    
    laura_rody = Player.find_or_create_by_first_name_and_last_name("Laura", "Rody")
    Result.create!(:tournament=>t, :player=>laura_rody, :place=>10, :bounty_collector=>lizzy_morone, :fee_paid=>true, :update_player_stats=>false)
    
    erik_fast = Player.find_or_create_by_first_name_and_last_name("Erik", "Fast")
    Result.create!(:tournament=>t, :player=>erik_fast, :place=>9, :bounty_collector=>brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    
    Result.create!(:tournament=>t, :player=>mark_schmitz, :place=>8, :bounty_collector=>lizzy_morone, :fee_paid=>true, :update_player_stats=>false)
    
    eric_tipton = Player.find_or_create_by_first_name_and_last_name("Eric", "Tipton")
    alex_farley = Player.find_or_create_by_first_name_and_last_name("Alex", "Farley")
    Result.create!(:tournament=>t, :player=>eric_tipton, :place=>7, :bounty_collector=>alex_farley, :fee_paid=>true, :update_player_stats=>false)
    
    Result.create!(:tournament=>t, :player=>zack_messer, :place=>6, :bounty_collector=>brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>kristy_arnett, :place=>5, :bounty_collector=>brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>lizzy_morone, :place=>4, :bounty_collector=>brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    Result.create!(:tournament=>t, :player=>alex_farley, :place=>3, :bounty_collector=>brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    
    amir_manji = Player.find_or_create_by_first_name_and_last_name("Amir", "Manji")
    Result.create!(:tournament=>t, :player=>amir_manji, :place=>2, :bounty_collector=>brian_fidler, :fee_paid=>true, :update_player_stats=>false)
    
    Result.create!(:tournament=>t, :player=>brian_fidler, :place=>1, :fee_paid=>true, :update_player_stats=>false)
    
    PlayerStat.update_all_stats(series.id)
  end
  
  def self.down
    Tournament.find_by_tournament_date(Date.new(2008, 8, 20)).destroy
    Player.find_by_first_name_and_last_name("Scott", "Dedoes").destroy
    PlayerStat.update_all_stats
  end
  
end