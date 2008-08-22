class Player < ActiveRecord::Base

  has_many :results, :dependent=>:destroy
  has_many :player_stats, :dependent=>:destroy
  
  validates_presence_of :first_name, :last_name
  
  def name(options = {})
    if options[:first_name_first]
      first_name.to_s + " " + last_name.to_s 
    else
      last_name.to_s + ", " + first_name.to_s
    end
  end
  
end
