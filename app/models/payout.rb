class Payout < ActiveRecord::Base
  
  has_one :result
  belongs_to :payout_structure
  
  validates_presence_of :place, :points, :payout_structure_id
end
