class Player < ActiveRecord::Base

  has_many :results, :dependent=>:destroy
  has_many :player_stats, :dependent=>:destroy
  
  validates_presence_of :first_name, :last_name
  
  def name
    last_name.to_s + ", " + first_name.to_s
  end
  
end
