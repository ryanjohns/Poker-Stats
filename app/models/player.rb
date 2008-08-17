class Player < ActiveRecord::Base

  has_many :results
  has_many :bounties
  has_one :player_stats
  
  validates_presence_of :first_name, :last_name
end
