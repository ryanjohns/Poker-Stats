class Series < ActiveRecord::Base
  
  has_many :tournaments
  
  validates_presence_of :series_name
end
