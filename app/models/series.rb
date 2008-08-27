class Series < ActiveRecord::Base
  
  has_many :tournaments, :dependent=>:destroy
  has_many :player_stats, :dependent=>:destroy
  
  attr_reader(:payout_structures_attr)
  validates_presence_of :name
  
  def payout_structures
    return @payout_structures_attr if @payout_structures_attr
    @payout_structures_attr = PayoutStructure.find_all_by_series_id(self.id)
    def @payout_structures_attr.series=(val)
      @series = val
    end
    @payout_structures_attr.series = self
    def @payout_structures_attr.reload
      @series.reload.payout_structures
    end
    @payout_structures_attr
  end
  
  def destroy
    payout_structures.each do |ps|
      ps.remove_series_id(self.id)
      if ps.series_ids.empty?
        ps.destroy
      else
        ps.save!
      end
    end
    super
  end
  
  def reload
    @payout_structures_attr = nil
    super
  end
  
end
