class Series < ActiveRecord::Base
  
  has_many :tournaments
  has_many :player_stats
  
  validates_presence_of :series_name
end
