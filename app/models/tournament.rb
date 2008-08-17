class Tournament < ActiveRecord::Base
  
  belongs_to :series
  has_many :results, :dependent=>:destroy
  has_one :payout_structure
  
  attr_accessor :num_entrants
  validates_presence_of :tournament_date, :series_id, :num_entrants
  validates_each :num_entrants do |record, attr, value|
    if !value.is_a? Fixnum or value <= 0
      self.errors.add(attr, "must be a positive integer")
    end
  end
  
  def before_save
    self.payout_structure_id = PayoutStructure.find_by_num_players_and_series_id(@num_entrants, series_id).id
  end
  
end
