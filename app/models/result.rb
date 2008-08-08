class Result < ActiveRecord::Base
  
  belongs_to :player
  belongs_to :payout
  
  validates_presence_of :player_id, :payout_id, :fee_paid
end
