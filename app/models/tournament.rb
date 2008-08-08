class Tournament < ActiveRecord::Base
  
  belongs_to :series
  
  validates_presence_of :date, :series_id
end
