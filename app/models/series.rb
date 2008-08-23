class Series < ActiveRecord::Base
  
  has_many :tournaments, :dependent=>:destroy
  has_many :player_stats, :dependent=>:destroy
  has_many :payout_structures #, :dependent=>:destroy
  
  validates_presence_of :name
  
  def destroy
    PayoutStructure.find_all_by_series_id(self.id).each do |ps|
      ps.remove_series_id(self.id)
      ps.destroy if ps.series_ids.empty?
    end
    super
  end
  
end
