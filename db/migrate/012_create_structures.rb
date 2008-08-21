class CreateStructures < ActiveRecord::Migration
  def self.up
    series = Series.find_by_name('Season 3')
    
    # 3 players
    ps = PayoutStructure.create!(:num_players=>3, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>20, :money=>40)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>10, :money=>20)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>5, :money=>15)
    
    # 4 players
    ps = PayoutStructure.create!(:num_players=>4, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>20, :money=>50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>10, :money=>30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>5, :money=>20)
    Payout.create!(:payout_structure=>ps, :place=>4)
    
    # 5 players
    ps = PayoutStructure.create!(:num_players=>5, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>20, :money=>65)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>10, :money=>35)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>5, :money=>25)
    Payout.create!(:payout_structure=>ps, :place=>4)
    Payout.create!(:payout_structure=>ps, :place=>5)
    
    # 6 players
    ps = PayoutStructure.create!(:num_players=>6, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>25, :money=>75)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>12, :money=>45)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>7, :money=>30)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>5)
    Payout.create!(:payout_structure=>ps, :place=>6)
    
    # 7 players
    ps = PayoutStructure.create!(:num_players=>7, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>25, :money=>90)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>12, :money=>50)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>7, :money=>35)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>5)
    for i in (5..7) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 8 players
    ps = PayoutStructure.create!(:num_players=>8, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>25, :money=>100)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>12, :money=>60)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>7, :money=>40)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>5)
    for i in (5..8) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 9 players
    ps = PayoutStructure.create!(:num_players=>9, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>30, :money=>115)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>14, :money=>65)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>8, :money=>45)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>3)
    for i in (6..9) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 10 players
    ps = PayoutStructure.create!(:num_players=>10, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>35, :money=>125)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>17, :money=>75)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>10, :money=>50)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>3)
    for i in (7..10) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 11 players
    ps = PayoutStructure.create!(:num_players=>11, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>35, :money=>140)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>17, :money=>80)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>10, :money=>55)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>3)
    for i in (7..11) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 12 players added by previous migration
    
    # 13 players
    ps = PayoutStructure.create!(:num_players=>13, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>35, :money=>165)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>17, :money=>95)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>10, :money=>65)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>3)
    for i in (7..13) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 14 players
    ps = PayoutStructure.create!(:num_players=>14, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>45, :money=>175)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>23, :money=>105)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>12, :money=>70)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>8)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    for i in (9..14) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 15 players
    ps = PayoutStructure.create!(:num_players=>15, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>45, :money=>190)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>23, :money=>110)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>12, :money=>75)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>8)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    for i in (9..15) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 16 players added by previous migration
    
    # 17 players added by previous migration
    
    # 18 players
    ps = PayoutStructure.create!(:num_players=>18, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60, :money=>225)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30, :money=>135)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15, :money=>90)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>3)
    for i in (10..18) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 19 players
    ps = PayoutStructure.create!(:num_players=>19, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60, :money=>240)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30, :money=>140)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15, :money=>95)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>3)
    for i in (10..19) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 20 players
    ps = PayoutStructure.create!(:num_players=>20, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60, :money=>250)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30, :money=>150)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15, :money=>100)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>3)
    for i in (10..20) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 21 players
    ps = PayoutStructure.create!(:num_players=>21, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60, :money=>265)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30, :money=>155)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15, :money=>105)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>3)
    for i in (10..21) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 22 players
    ps = PayoutStructure.create!(:num_players=>22, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60, :money=>275)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30, :money=>165)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15, :money=>110)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>3)
    for i in (10..22) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 23 players
    ps = PayoutStructure.create!(:num_players=>23, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>70, :money=>290)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>35, :money=>170)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>18, :money=>115)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>14)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>8)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..23) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 24 players
    ps = PayoutStructure.create!(:num_players=>24, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>70, :money=>300)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>35, :money=>180)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>18, :money=>120)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>14)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>8)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..24) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 25 players
    ps = PayoutStructure.create!(:num_players=>25, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>70, :money=>315)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>35, :money=>185)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>18, :money=>125)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>14)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>8)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..25) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 26 players
    ps = PayoutStructure.create!(:num_players=>26, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>70, :money=>325)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>35, :money=>195)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>18, :money=>130)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>14)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>8)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..26) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 27 players
    ps = PayoutStructure.create!(:num_players=>27, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :money=>340)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :money=>200)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :money=>135)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>17)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>12)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..27) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 28 players
    ps = PayoutStructure.create!(:num_players=>28, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :money=>350)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :money=>210)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :money=>140)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>17)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>12)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..28) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 29 players
    ps = PayoutStructure.create!(:num_players=>29, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :money=>365)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :money=>215)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :money=>145)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>17)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>12)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..29) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 30 players
    ps = PayoutStructure.create!(:num_players=>30, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :money=>375)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :money=>225)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :money=>150)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>17)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>12)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..30) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 31 players
    ps = PayoutStructure.create!(:num_players=>31, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :money=>390)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :money=>230)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :money=>155)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>17)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>12)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..31) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
    
    # 32 players
    ps = PayoutStructure.create!(:num_players=>32, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :money=>400)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :money=>240)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :money=>160)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>17)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>12)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>10, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>11, :points=>3)
    for i in (12..32) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end
  end

  def self.down
    [3,4,5,6,7,8,9,10,11,13,14,15,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32].each {|num| PayoutStructure.find_by_num_players(num).destroy}
  end
end
