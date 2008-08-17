class Series < ActiveRecord::Base
  
  has_many :tournaments, :dependent=>:destroy
  has_many :player_stats, :dependent=>:destroy
  has_many :payout_structures, :dependent=>:destroy
  
  validates_presence_of :name
end
