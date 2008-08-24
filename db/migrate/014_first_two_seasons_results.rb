class FirstTwoSeasonsResults < ActiveRecord::Migration
  
  def self.up
    
    season1 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 1", Date.new(2007, 1, 10), true)
    season2 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 2", Date.new(2008, 2, 6), true)
    
    season1.destroy
    season2.destroy
    
    # Seasons
    season1 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 1", Date.new(2007, 1, 10), true)
    season2 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 2", Date.new(2008, 2, 6), true)
        
    # Payout Structures
    # 3-5 players
    ps = PayoutStructure.create!(:min_players=>3, :max_players=>5, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>20)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>2)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>1)
    
    # 6-8 players
    ps = PayoutStructure.create!(:min_players=>6, :max_players=>8, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>25)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>12)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>2)
    for i in (6..8) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 9 players
    ps = PayoutStructure.create!(:min_players=>9, :max_players=>9, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>30)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>14)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>2)
    for i in (7..9) do
      Payout.create!(:payout_structure=>ps, :place=>i, :points=>1)
    end
    
    # 10-13 players
    ps = PayoutStructure.create!(:min_players=>10, :max_players=>13, :series=>season1)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>35)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>17)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>9)
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
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>45)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>23)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>12)
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
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>7)
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
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>70)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>35)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>18)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>9)
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
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>8)
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
    names5 = "Tony DeSylva, Brittany Giacolletto, Ryan C(I), Josh Unknown"
    [names1, names2, names3, names4, names5].join(", ").split(", ").each do |name|
      arr = name.split(" ")
      Player.find_or_create_by_first_name_and_last_name(arr[0], arr[1])
    end
    
    # create easy-to-use variables
    Player.find(:all).each do |player|
      eval(player.name(:variablize=>true)+"=player")
    end
    
    # Season 1
    # Week 1
    t = Tournament.create!(:series=>season1, :tournament_date=>season1.start_date, :num_players=>6)
    
    Result.create!(:player=>bob_pajich, :place=>6, :bounty_collector=>justin_marshand, :fee_paid=>true)
  end
  
  def self.down
    # Seasons
    season1 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 1", Date.new(2007, 1, 10), true)
    season2 = Series.find_or_create_by_name_and_start_date_and_is_complete("Season 2", Date.new(2008, 2, 6), true)
    
    season1.destroy
    season2.destroy
  end

end