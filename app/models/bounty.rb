class Bounty < ActiveRecord::Base
  
  belongs_to :player, :foreign_key => "pwner_id"
  belongs_to :player, :foreign_key => "bitch_id"
  
  validates_presence_of :bitch_id, :pwner_id
end
