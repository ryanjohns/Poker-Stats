class Tournament < ActiveRecord::Base
  
  belongs_to :series
  has_many :results, :dependent=>:destroy
  has_one :payout_structure
  
  attr_reader :num_entrants_attr
  validates_presence_of :tournament_date, :series_id
  validates_each :num_entrants do |record, attr, value|
    if !value.is_a? Fixnum or value <= 0
      record.errors.add(attr, "must be a positive integer")
    end
  end
  
  def num_entrants
    self.results.nitems
  end
  
  def before_save
    self.payout_structure_id = PayoutStructure.find_by_num_players_and_series_id(@num_entrants_attr, series_id).id
  end
  
end
