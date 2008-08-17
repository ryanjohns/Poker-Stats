class Player < ActiveRecord::Base

  has_many :results
  has_one :player_stats
  
  validates_presence_of :first_name, :last_name
  
  def bounties
    Bounty.find_all_by_pwner_id(self.id)
  end
  
  test
  
end
