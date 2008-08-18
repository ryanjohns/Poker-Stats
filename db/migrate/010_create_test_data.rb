class CreateTestData < ActiveRecord::Migration
  
  # To test the automation of player stats generation (for player_stats table),
  # this can be run, reversed, and re-run as needed
  def self.up
    Series.destroy_all
    Player.destroy_all
    
    p1 = Player.create!(:first_name=>"Eric", :last_name=>"Tipton")
    p2 = Player.create!(:first_name=>"Ryan", :last_name=>"Johns")
    p3 = Player.create!(:first_name=>"Amir", :last_name=>"Manji")
    
    s = Series.create!(:name=>"Test Series")
    
    ps = PayoutStructure.create!(:num_players=>3, :series=>s)
    pay1 = Payout.create!(:payout_structure=>ps, :place=>1, :points=>100, :money=>300)
    pay2 = Payout.create!(:payout_structure=>ps, :place=>2, :points=>50, :money=>200)
    pay3 = Payout.create!(:payout_structure=>ps, :place=>3, :points=>25)
    
    t = Tournament.create!(:series=>s, :tournament_date=>Time.now, :num_entrants=>3)
    
    result3 = Result.create!(:tournament=>t, :player=>p3, :place=>3, :bounty_collector=>p1, :fee_paid=>true)
    result2 = Result.create!(:tournament=>t, :player=>p2, :place=>2, :bounty_collector=>p1, :fee_paid=>true)
    result1 = Result.create!(:tournament=>t, :player=>p1, :place=>1, :fee_paid=>true)
    
  end

  def self.down
    Series.destroy_all
    Player.destroy_all
  end
end