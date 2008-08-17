class PlayerStat < ActiveRecord::Base
  
  belongs_to :series
  belongs_to :player
  
  validates_presence_of :player_id, :series_id
end
