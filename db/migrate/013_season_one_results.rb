class SeasonOneResults < ActiveRecord::Migration
  
  def self.up
        
    season1 = Series.find(:first, :conditions => 'name = "Season 2"')    
        
    # Payout Structures
    # 3-5 players
    ps = PayoutStructure.create!(:min_players=>3, :max_players=>5, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>20, :percentage => 100)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>2)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>1)
    
    # 6-8 players
    ps = PayoutStructure.create!(:min_players=>6, :max_players=>8, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>25, :percentage => 70)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>12, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>2)
    for i in (6..8) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 9 players
    ps = PayoutStructure.create!(:min_players=>9, :max_players=>9, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>30, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>14, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>7, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>2)
    for i in (7..9) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 10-13 players
    ps = PayoutStructure.create!(:min_players=>10, :max_players=>13, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>35, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>17, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>9, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>3)
    for i in (7..11) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>2)
    end
    for i in (12..13) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 14-17 players
    ps = PayoutStructure.create!(:min_players=>14, :max_players=>17, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>45, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>23, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>12, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>4)
    for i in (7..9) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>3)
    end
    for i in (10..13) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>2)
    end
    for i in (14..17) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 18-22 players
    ps = PayoutStructure.create!(:min_players=>18, :max_players=>22, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60, :percentage => 40)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15, :percentage => 20)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>7, :percentage => 10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>5)
    for i in (7..8) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>4)
    end
    for i in (9..10) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>3)
    end
    for i in (11..17) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>2)
    end
    for i in (18..22) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 23-26 players
    ps = PayoutStructure.create!(:min_players=>23, :max_players=>26, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>70, :percentage => 40)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>35, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>18, :percentage => 20)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>9, :percentage => 10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>6)
    for i in (7..8) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>5)
    end
    for i in (9..10) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>4)
    end
    for i in (11..12) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>3)
    end
    for i in (13..22) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>2)
    end
    for i in (23..26) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 27-32 players
    ps = PayoutStructure.create!(:min_players=>27, :max_players=>32, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :percentage => 37)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :percentage => 27)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :percentage => 18)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10, :percentage => 10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>8, :percentage => 8)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>6)
    for i in (8..9) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>5)
    end
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    for i in (11..13) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>3)
    end
    for i in (14..26) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>2)
    end
    for i in (27..32) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    Series.find_by_name("Season 3").payout_structures.each do |ps|
      ps.add_series(season2)
      ps.save!
    end
    
    # New Players
    names1 = "John Grinzivich, Brandon Scoggins, Rich Belsky, Bob Pajich, Micah Thomas, Dave Wilmert, Ryan McGuire, Todd Alexander, Morgan Kise"
    names2 = "Justin Marchand, Konan Luce, Mary Hurbi, Paul Wilhelm, Michael Friedman, Megan Cork, Randy Watters, Sherry Pinder, Theo Tran"
    names3 = "Jamie Wilhelm, Seth Niesen, Lara Miller, Mark Pinder, Shannon Watters, Ryan VanWinkle, Alex G(I), Chris Hinkel, Tim M, Dustin Fremion"
    names4 = "Raphael (I), Alex P(I), Scott M(I), Blake Levario, Chris P(I), Sharad (I), Cameron (I), James B, Ryan Lucchesi, Joe Hulbert"
    names5 = "Tony DeSylva, Brittany Giacoletto, Ryan C(I), Paola Rodriguez"
    [names1, names2, names3, names4, names5].join(", ").split(", ").each do |name|
      arr = name.split(" ")
      Player.find_or_create_by_first_name_and_last_name(arr[0], arr[1])
    end
    
    # create easy-to-use variables
    Player.find(:all).each do |player|
      eval("@"+player.name(:variablize=>true)+"=player")
    end
    
    # Season 1
    # Week 1
    t = Tournament.create!(:series=>season1, :tournament_date=>season1.start_date, :num_entrants=>13)
    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>13, :bounty_collector=>@ronnie_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>12, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>11, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>10, :bounty_collector=>@lizzy_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@morgan_kise, :place=>9, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>8, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@julio_rodriguez, :place=>7, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>6, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>5, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>4, :bounty_collector=>@bob_pajich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>3, :bounty_collector=>@lizzy_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>2, :bounty_collector=>@bob_pajich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bob_pajich, :place=>1, :fee_paid=>true)
  
    # Week 2
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 7, 25), :num_entrants=>15)
    
    Result.create!(:tournament=>t, :player=>@bob_pajich, :place=>15, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shannon_watters, :place=>14, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>13, :bounty_collector=>@ronnie_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>12, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>11, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>10, :bounty_collector=>@konan_luce, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>9, :bounty_collector=>@bethany_cermak, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@konan_luce, :place=>8, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>7, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@randy_watters, :place=>6, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>5, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>4, :bounty_collector=>@bethany_cermak, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>3, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>2, :bounty_collector=>@bethany_cermak, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>1, :fee_paid=>true)
    
    # Week 3
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 8, 1), :num_entrants=>16)
    
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>16, :bounty_collector=>@justin_marchand, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>15, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>14, :bounty_collector=>@mark_schmitz, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bob_pajich, :place=>13, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>12, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>11, :bounty_collector=>@ronnie_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>10, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>9, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>8, :bounty_collector=>@morgan_kise, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>7, :bounty_collector=>@danny_egelhoff, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@justin_marchand, :place=>6, :bounty_collector=>@morgan_kise, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>5, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@morgan_kise, :place=>4, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@danny_egelhoff, :place=>3, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>2, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>1, :fee_paid=>true)
    
    # Week 4
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 8, 8), :num_entrants=>16)
    
    Result.create!(:tournament=>t, :player=>@mark_pinder, :place=>16, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>15, :bounty_collector=>@sherry_pinder, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>14, :bounty_collector=>@bob_pajich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>13, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>12, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>11, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@morgan_kise, :place=>10, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@sherry_pinder, :place=>9, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>8, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>7, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@konan_luce, :place=>6, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@michael_friedman, :place=>5, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>4, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>3, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bob_pajich, :place=>2, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>1, :fee_paid=>true)
    
    # Week 5
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 8, 15), :num_entrants=>15)
    
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>15, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@jamie_wilhelm, :place=>14, :bounty_collector=>@ryan_mcguire, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>13, :bounty_collector=>@paul_wilhelm, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>12, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>11, :bounty_collector=>@paul_wilhelm, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@morgan_kise, :place=>10, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bob_pajich, :place=>9, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>8, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>7, :bounty_collector=>@paul_wilhelm, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>6, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@danny_egelhoff, :place=>5, :bounty_collector=>@paul_wilhelm, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@paul_wilhelm, :place=>4, :bounty_collector=>@ryan_mcguire, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>3, :bounty_collector=>@ryan_mcguire, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ryan_mcguire, :place=>2, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>1, :fee_paid=>true)
  
    # Week 6
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 8, 22), :num_entrants=>22)
    
    Result.create!(:tournament=>t, :player=>@jamie_wilhelm, :place=>22, :bounty_collector=>@justin_marchand, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@morgan_kise, :place=>21, :bounty_collector=>@justin_marchand, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@paul_wilhelm, :place=>20, :bounty_collector=>@seth_niesen, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>19, :bounty_collector=>@lizzy_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>18, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>17, :bounty_collector=>@lizzy_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@danny_egelhoff, :place=>16, :bounty_collector=>@justin_marchand, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bob_pajich, :place=>15, :bounty_collector=>@justin_marchand, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@seth_niesen, :place=>14, :bounty_collector=>@ronnie_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ryan_mcguire, :place=>13, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>12, :bounty_collector=>@justin_marchand, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>11, :bounty_collector=>@josh_smith, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>10, :bounty_collector=>@josh_smith, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>9, :bounty_collector=>@josh_smith, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@justin_marchand, :place=>8, :bounty_collector=>@josh_smith, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>7, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andria_smith, :place=>6, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>5, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>4, :bounty_collector=>@josh_smith, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>3, :bounty_collector=>@josh_smith, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@josh_smith, :place=>2, :bounty_collector=>@tim_resnik, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tim_resnik, :place=>1, :fee_paid=>true)
  
    # Week 7
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 8, 29), :num_entrants=>9)
    
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>9, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>8, :bounty_collector=>@lizzy_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>7, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>6, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>5, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>4, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>3, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>2, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>1, :fee_paid=>true)
  
    # Week 8
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 9, 5), :num_entrants=>12)

    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>12, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>11, :bounty_collector=>@ronnie_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>10, :bounty_collector=>@mark_schmitz, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>9, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>8, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>7, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>6, :bounty_collector=>@ryan_mcguire, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@justin_marchand, :place=>5, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ryan_mcguire, :place=>4, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>3, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>2, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>1, :fee_paid=>true)
  
    # Week 9
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 9, 12), :num_entrants=>11)

    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>11, :bounty_collector=>@john_grinzivich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>10, :bounty_collector=>@eric_tipton, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>9, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>8, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>7, :bounty_collector=>@micah_thomas, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>6, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>5, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>4, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>3, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>2, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>1, :fee_paid=>true)
  
    # Week 10
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 9, 19), :num_entrants=>13)

    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>13, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>12, :bounty_collector=>@ronnie_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>11, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>10, :bounty_collector=>@kristy_arnett, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>9, :bounty_collector=>@ronnie_morone, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>8, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mary_hurbi, :place=>7, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>6, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>5, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>4, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>3, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>2, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>1, :fee_paid=>true)
  
    # Week 11
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 9, 26), :num_entrants=>16)

    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>16, :bounty_collector=>@bethany_cermak, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>15, :bounty_collector=>@micah_thomas, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>14, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>13, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>12, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>11, :bounty_collector=>@tony_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>10, :bounty_collector=>@scott_dedoes, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>9, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>8, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>7, :bounty_collector=>@shawn_green, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>6, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>5, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>4, :bounty_collector=>@shawn_green, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>3, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>2, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>1, :fee_paid=>true)
  
    # Week 12
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 10, 3), :num_entrants=>16)

    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>16, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>15, :bounty_collector=>@tim_resnik, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>14, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>13, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>12, :bounty_collector=>@micah_thomas, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>11, :bounty_collector=>@tim_resnik, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>10, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>9, :bounty_collector=>@tim_resnik, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>8, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>7, :bounty_collector=>@tim_resnik, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>6, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>5, :bounty_collector=>@bethany_cermak, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>4, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tim_resnik, :place=>3, :bounty_collector=>@bethany_cermak, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>2, :bounty_collector=>@bethany_cermak, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>1, :fee_paid=>true)
  
    # Week 13
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 10, 10), :num_entrants=>11)

    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>11, :bounty_collector=>@lizzy_morone, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>10, :bounty_collector=>@scott_dedoes, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>9, :bounty_collector=>@scott_dedoes, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>8, :bounty_collector=>@scott_dedoes, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>7, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>6, :bounty_collector=>@lizzy_morone, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>5, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>4, :bounty_collector=>@rich_belsky, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>3, :bounty_collector=>@scott_dedoes, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>2, :bounty_collector=>@scott_dedoes, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>1, :fee_paid=>false)
  
    # Week 14
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 10, 17), :num_entrants=>16)

    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>16, :bounty_collector=>@lara_miller, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>15, :bounty_collector=>@theo_tran, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>14, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>13, :bounty_collector=>@theo_tran, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>12, :bounty_collector=>@theo_tran, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@lara_miller, :place=>11, :bounty_collector=>@theo_tran, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>10, :bounty_collector=>@shawn_green, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>9, :bounty_collector=>@shawn_green, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@theo_tran, :place=>8, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@konan_luce, :place=>7, :bounty_collector=>@tim_resnik, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>6, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>5, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>4, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@tim_resnik, :place=>3, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>2, :bounty_collector=>@shawn_green, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>1, :fee_paid=>false)
  
    # Week 15
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 10, 24), :num_entrants=>10)

    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>10, :bounty_collector=>@brandon_scoggins, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>9, :bounty_collector=>@john_grinzivich, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>8, :bounty_collector=>@rich_belsky, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>7, :bounty_collector=>@mark_schmitz, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>6, :bounty_collector=>@micah_thomas, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>5, :bounty_collector=>@micah_thomas, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>4, :bounty_collector=>@micah_thomas, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>3, :bounty_collector=>@micah_thomas, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>2, :bounty_collector=>@micah_thomas, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>1, :fee_paid=>true)
  
    # Week 16 - bounties missing this week
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 11, 7), :num_entrants=>15)

    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>15, :bounty_collector=>@mark_schmitz, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>14, :bounty_collector=>@shawn_green, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>13, :bounty_collector=>@tony_moreno, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>12, :bounty_collector=>@john_grinzivich, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>11, :bounty_collector=>@micah_thomas, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>10, :bounty_collector=>@scott_dedoes, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>9, :bounty_collector=>@ronnie_morone, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>8, :bounty_collector=>@brandon_scoggins, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>7, :bounty_collector=>@steve_radulovich, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>6, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>5, :bounty_collector=>@bethany_cermak, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>4, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>3, :bounty_collector=>@brian_fidler, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>2, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>1, :fee_paid=>true)
    
    # Week 17
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 11, 14), :num_entrants=>18)

    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>18, :bounty_collector=>@rich_belsky, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@todd_alexander, :place=>17, :bounty_collector=>@andrew_moreno, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>16, :bounty_collector=>@kristy_arnett, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>15, :bounty_collector=>@shawn_green, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>14, :bounty_collector=>@steve_radulovich, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>13, :bounty_collector=>@brian_fidler, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>12, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tim_resnik, :place=>11, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>10, :bounty_collector=>@rich_belsky, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>9, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>8, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>7, :bounty_collector=>@dave_wilmert, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@justin_marchand, :place=>6, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@dave_wilmert, :place=>5, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>4, :bounty_collector=>@rich_belsky, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>3, :bounty_collector=>@steve_radulovich, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>2, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>1, :fee_paid=>true)
  
    # Week 18
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 11, 28), :num_entrants=>17)

    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>17, :bounty_collector=>@scott_dedoes, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>16, :bounty_collector=>@andrew_moreno, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@dave_wilmert, :place=>15, :bounty_collector=>@andrew_moreno, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>14, :bounty_collector=>@andrew_moreno, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>13, :bounty_collector=>@megan_cork, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>12, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>11, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>10, :bounty_collector=>@brian_fidler, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>9, :bounty_collector=>@morgan_kise, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@megan_cork, :place=>8, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mary_hurbi, :place=>7, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@morgan_kise, :place=>6, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>5, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tim_resnik, :place=>4, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>3, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>2, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>1, :fee_paid=>true)

    # Week 19
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 12, 5), :num_entrants=>14)

    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>14, :bounty_collector=>@eric_tipton, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>13, :bounty_collector=>@eric_tipton, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>12, :bounty_collector=>@dave_wilmert, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>11, :bounty_collector=>@tony_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>10, :bounty_collector=>@dave_wilmert, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>9, :bounty_collector=>@dave_wilmert, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>8, :bounty_collector=>@bethany_cermak, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>7, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>6, :bounty_collector=>@dave_wilmert, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>5, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>4, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@dave_wilmert, :place=>3, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>2, :bounty_collector=>@tony_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>1, :fee_paid=>true)
  
    # Week 20
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 12, 12), :num_entrants=>15)

    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>15, :bounty_collector=>@dave_wilmert, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>14, :bounty_collector=>@dave_wilmert, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>13, :bounty_collector=>@john_grinzivich, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>12, :bounty_collector=>@shawn_green, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>11, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@mary_hurbi, :place=>10, :bounty_collector=>@brian_fidler, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@brandon_scoggins, :place=>9, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>8, :bounty_collector=>@dave_wilmert, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>7, :bounty_collector=>@dave_wilmert, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>6, :bounty_collector=>@brian_fidler, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>5, :bounty_collector=>@steve_radulovich, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>4, :bounty_collector=>@brian_fidler, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@dave_wilmert, :place=>3, :bounty_collector=>@brian_fidler, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>2, :bounty_collector=>@brian_fidler, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>1, :fee_paid=>true)
  
    # Week 21
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2007, 12, 19), :num_entrants=>14)

    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>14, :bounty_collector=>@ronnie_morone, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>13, :bounty_collector=>@steve_radulovich, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>12, :bounty_collector=>@andrew_moreno, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>11, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>10, :bounty_collector=>@eric_tipton, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>9, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>8, :bounty_collector=>@todd_alexander, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>7, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>6, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>5, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>4, :bounty_collector=>@todd_alexander, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>3, :bounty_collector=>@todd_alexander, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@todd_alexander, :place=>2, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>1, :fee_paid=>false)
  
    # Week 22
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2008, 1, 2), :num_entrants=>10)

    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>10, :bounty_collector=>@brian_fidler, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>9, :bounty_collector=>@scott_dedoes, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>8, :bounty_collector=>@dave_wilmert, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@dave_wilmert, :place=>7, :bounty_collector=>@brian_fidler, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>6, :bounty_collector=>@brian_fidler, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>5, :bounty_collector=>@brian_fidler, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>4, :bounty_collector=>@brian_fidler, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>3, :bounty_collector=>@mark_schmitz, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>2, :bounty_collector=>@mark_schmitz, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>1, :fee_paid=>false)
    
    # Week 23
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2008, 1, 9), :num_entrants=>17)

    Result.create!(:tournament=>t, :player=>@dave_wilmert, :place=>17, :bounty_collector=>@mark_schmitz, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@megan_cork, :place=>16, :bounty_collector=>@mark_schmitz, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>15, :bounty_collector=>@eric_tipton, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>14, :bounty_collector=>@eric_tipton, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@todd_alexander, :place=>13, :bounty_collector=>@julio_rodriguez, :fee_paid=>true)    
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>12, :bounty_collector=>@rich_belsky, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>11, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>10, :bounty_collector=>@andrew_moreno, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>9, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>8, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>7, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@morgan_kise, :place=>6, :bounty_collector=>@rich_belsky, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>5, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>4, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@julio_rodriguez, :place=>3, :bounty_collector=>@andrew_moreno, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>2, :bounty_collector=>@andrew_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>1, :fee_paid=>false)
  
    # Week 24
    t = Tournament.create!(:series=>season1, :tournament_date=>Date.new(2008, 1, 16), :num_entrants=>17)

    Result.create!(:tournament=>t, :player=>@shawn_green, :place=>17, :bounty_collector=>@kristy_arnett, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@andrew_moreno, :place=>16, :bounty_collector=>@ronnie_morone, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@steve_radulovich, :place=>15, :bounty_collector=>@bethany_cermak, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@ronnie_morone, :place=>14, :bounty_collector=>@brian_fidler, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@micah_thomas, :place=>13, :bounty_collector=>@kristy_arnett, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@brian_fidler, :place=>12, :bounty_collector=>@scott_dedoes, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@john_grinzivich, :place=>11, :bounty_collector=>@rich_belsky, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@lizzy_morone, :place=>10, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)    
    Result.create!(:tournament=>t, :player=>@mary_hurbi, :place=>9, :bounty_collector=>@eric_tipton, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@scott_dedoes, :place=>8, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@rich_belsky, :place=>7, :bounty_collector=>@eric_tipton, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@mark_schmitz, :place=>6, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@bethany_cermak, :place=>5, :bounty_collector=>@kristy_arnett, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@eric_tipton, :place=>4, :bounty_collector=>@julio_rodriguez, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@julio_rodriguez, :place=>3, :bounty_collector=>@kristy_arnett, :fee_paid=>true)
    Result.create!(:tournament=>t, :player=>@kristy_arnett, :place=>2, :bounty_collector=>@tony_moreno, :fee_paid=>false)
    Result.create!(:tournament=>t, :player=>@tony_moreno, :place=>1, :fee_paid=>false)
  
  end
  
  def self.down
    # Seasons
    season1 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 1", Date.new(2007, 7, 18), true)
    season2 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 2", Date.new(2007, 2, 6), true)
    
    season1.destroy
    season2.destroy
  end

end