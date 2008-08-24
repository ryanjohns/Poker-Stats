class Tournament < ActiveRecord::Base
  
  belongs_to :series
  has_many :results, :dependent=>:destroy
  has_one :payout_structure
  
  validates_presence_of :tournament_date, :series_id
  
  def before_save
    self.payout_structure_id = PayoutStructure.find_by_num_players_and_series_id(self.num_entrants, series_id).id
  end
  
end
