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
  
  def num_entrants=(value)
    self.payout_structure_id = (PayoutStructure.find_by_num_players_and_series_id(@num_entrants_attr, series_id).id rescue nil)
    self.payout_structure = nil
    @num_entrants_attr = value
  end
  
  def num_entrants
    return @num_entrants_attr if @num_entrants_attr
    @num_entrants_attr = (payout_structure.num_players rescue nil)
  end
  
  def before_save
    self.payout_structure_id = PayoutStructure.find_by_num_players_and_series_id(@num_entrants_attr, series_id).id
  end
  
end
