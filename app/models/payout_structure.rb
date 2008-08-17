class PayoutStructure < ActiveRecord::Base
  
  has_many :payouts, :dependent=>:destroy
  
  validates_presence_of :num_players
  
end
