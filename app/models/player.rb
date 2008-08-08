class Player < ActiveRecord::Base

  has_many :results
  has_many :bounties
  
  validates_presence_of :first_name, :last_name
end
