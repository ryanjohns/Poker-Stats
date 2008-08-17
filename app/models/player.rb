class Player < ActiveRecord::Base

  has_many :results, :dependent=>:destroy
  has_many :player_stats, :dependent=>:destroy
  
  validates_presence_of :first_name, :last_name
  
end
