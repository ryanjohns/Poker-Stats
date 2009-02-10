class CreateSeasonFour < ActiveRecord::Migration
  def self.up
    Series.find_by_name('Season 3').update_attribute(:is_complete, true)
    series = Series.create(:name =>'Season 4', :start_date => DateTime.parse("02/11/2009"))

    # 3-5 players
    ps = PayoutStructure.create!(:min_players=>3, :max_players=>5, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>20, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>10, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>5, :percentage => 20)
    for i in (4..5) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end

    # 6-8 players
    ps = PayoutStructure.create!(:min_players=>6, :max_players=>8, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>25, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>12, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>7, :percentage => 20)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>5)
    for i in (5..8) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end

    # 9 players
    ps = PayoutStructure.create!(:min_players=>9, :max_players=>9, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>30, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>14, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>8, :percentage => 20)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>3)
    for i in (6..9) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end

    # 10-13 players
    ps = PayoutStructure.create!(:min_players=>10, :max_players=>13, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>35, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>17, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>10, :percentage => 20)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>5)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>3)
    for i in (7..13) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end

    # 14-17 players
    ps = PayoutStructure.create!(:min_players=>14, :max_players=>17, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>45, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>23, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>12, :percentage => 20)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>8)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>4)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    for i in (9..17) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end

    # 18-22 players
    ps = PayoutStructure.create!(:min_players=>18, :max_players=>22, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>60, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>30, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>15, :percentage => 20)
    Payout.create!(:payout_structure=>ps, :place=>4, :points=>10)
    Payout.create!(:payout_structure=>ps, :place=>5, :points=>7)
    Payout.create!(:payout_structure=>ps, :place=>6, :points=>6)
    Payout.create!(:payout_structure=>ps, :place=>7, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>8, :points=>3)
    Payout.create!(:payout_structure=>ps, :place=>9, :points=>3)
    for i in (10..22) do
      Payout.create!(:payout_structure=>ps, :place=>i)
    end

    # 23-26 players
    ps = PayoutStructure.create!(:min_players=>23, :max_players=>26, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>70, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>35, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>18, :percentage => 20)
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

    # 27-32 players
    ps = PayoutStructure.create!(:min_players=>27, :max_players=>32, :series=>series)
    Payout.create!(:payout_structure=>ps, :place=>1, :points=>85, :percentage => 50)
    Payout.create!(:payout_structure=>ps, :place=>2, :points=>43, :percentage => 30)
    Payout.create!(:payout_structure=>ps, :place=>3, :points=>21, :percentage => 20)
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
    series = Series.find_by_name('Season 4')
    PayoutStructure.find_all_by_series_id(series.id).each { |ps| ps.destroy }
    series.destroy
    Series.find_by_name('Season 3').update_attribute(:is_complete, false)
  end
end
