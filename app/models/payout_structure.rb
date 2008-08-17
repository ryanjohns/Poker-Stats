class PayoutStructure < ActiveRecord::Base
  
  has_many :payouts, :dependent=>:destroy
  belongs_to :series
  
  validates_presence_of :num_players, :series_id
  
end
