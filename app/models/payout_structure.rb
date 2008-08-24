class PayoutStructure < ActiveRecord::Base
  
  has_many :payouts, :dependent=>:destroy
  #belongs_to :series
  
  attr_reader :series_attr
  attr_reader :series_ids_attr
  validates_presence_of :min_players, :max_players, :series_ids
  
  validates_each :series_ids do |record, attr, value|
    begin
      value.each do |val|
        if !(val =~ /^[0-9]+$/) or val.to_i <= 0
          record.errors.add(attr, "must be an array of positive integers")
        end
      end
    rescue
      record.errors.add(attr, "must be an array of positive integers")
    end
  end
  
  class << self
    def find_all_by_series_id(s_id)
      find(:all, :conditions=>["series_ids like ? or series_ids like ? or series_ids like ?", "#{s_id}", "#{s_id},%", "%,#{s_id},%"])
    end
    
    def find_by_num_players_and_series_id(n_players, s_id)
      find(:first, :conditions=>["(series_ids like ? or series_ids like ? or series_ids like ?) and ? between min_players and max_players",  "#{s_id}", "#{s_id},%", "%,#{s_id},%", n_players])
    end
  end
  
  def series=(val)
    @series_attr = nil
    Array(val).each do |s|
      add_series_id(s.id)
    end
    @series_attr = series
  end
  
  def series
    return @series_attr if @series_attr
    arr = []
    Array(series_ids).each do |val|
      arr << Series.find_by_id(val)
    end
    @series_attr = arr
  end
  
  def add_series(val)
    add_series_id(val.id)
  end
  
  def remove_series(val)
    remove_series_id(val.id)
  end
  
  def series_ids=(val)
    Array(val).each do |id|
      add_series_id(id)
    end
    @series_attr = nil
    @series_ids_attr = val
  end
  
  def series_ids
    return @series_ids_attr if @series_ids_attr
    arr = []
    read_attribute(:series_ids).to_s.split(",").each do |val|
      arr << val
    end
    @series_ids_attr = arr
  end
  
  def add_series_id(val)
    @series_ids_attr = nil
    @series_attr = nil
    ids = read_attribute(:series_ids)
    if ids.blank?
      write_attribute(:series_ids, val)
    else
      write_attribute(:series_ids, ids + ",#{val}")
    end
    series_ids
  end
  
  def remove_series_id(val)
    @series_ids_attr = nil
    @series_attr = nil
    write_attribute(:series_ids, read_attribute(:series_ids).gsub(",#{val},",","))
    ids = read_attribute(:series_ids)
    if ids.index(val.to_s+",") == 0
      write_attribute(:series_ids, ids.sub("#{val},", ""))
    elsif ids =~ /^#{val}$/
      write_attribute(:series_ids, ids.sub("#{val}", ""))
    end
    series_ids
  end
  
end
