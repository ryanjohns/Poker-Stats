class Tournament < ActiveRecord::Base
  
  belongs_to :series
  has_many :results, :dependent=>:destroy
  
  validates_presence_of :tournament_date, :series_id
end
