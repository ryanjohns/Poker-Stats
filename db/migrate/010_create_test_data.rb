class CreateTestData < ActiveRecord::Migration
  
  # To test the automation of player stats generation (for player_stats table),
  # this can be run, reversed, and re-run as needed
  def self.up
    p1 = Player.create!(:first_name=>"Eric", :last_name=>"Tipton")
    p2 = Player.create!(:first_name=>"Ryan", :last_name=>"Johns")
    p3 = Player.create!(:first_name=>"Amir", :last_name=>"Manji")
    s = Series.create!(:name=>"Test Series")
    t = Tournament.create!(:series=>s, :tournament_date=>Time.now)
    ps = PayoutStructure.create!(:num_players=>3)
    pay1 = Payout.create!(:payout_structure=>ps, :place=>1, :points=>100, :money=>300)
    pay2 = Payout.create!(:payout_structure=>ps, :place=>2, :points=>50, :money=>200)
    pay3 = Payout.create!(:payout_structure=>ps, :place=>3, :points=>25, :money=>100)
    result1 = Result.create!(:player=>p1, :payout=>pay1, :tournament=>t, :fee_paid=>true)
    result2 = Result.create!(:player=>p2, :payout=>pay2, :tournament=>t, :fee_paid=>true, :bounty_collector_id=>p1.id)
    result3 = Result.create!(:player=>p3, :payout=>pay3, :tournament=>t, :fee_paid=>true, :bounty_collector_id=>p1.id)
  end

  def self.down
    Player.destroy_all
    Series.destroy_all
    Tournament.destroy_all
    PayoutStructure.destroy_all
    Payout.destroy_all
    Result.destroy_all
    PlayerStat.destroy_all
  end
end