# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 20) do

  create_table "payout_structures", :force => true do |t|
    t.column "min_players", :integer
    t.column "max_players", :integer
    t.column "series_ids",  :string
  end

  create_table "payouts", :force => true do |t|
    t.column "place",               :integer
    t.column "points",              :integer, :default => 0
    t.column "payout_structure_id", :integer
    t.column "percentage",          :integer, :default => 0, :null => false
  end

  create_table "player_stats", :force => true do |t|
    t.column "series_id",      :integer
    t.column "player_id",      :integer
    t.column "rank",           :integer,                               :default => 0
    t.column "profit",         :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "winnings",       :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "roi",            :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "top_ten_points", :integer,                               :default => 0
    t.column "total_points",   :integer,                               :default => 0
    t.column "avg_points",     :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "num_played",     :integer,                               :default => 0
    t.column "total_buy_ins",  :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "num_firsts",     :integer,                               :default => 0
    t.column "num_cashes",     :integer,                               :default => 0
    t.column "num_bounties",   :integer,                               :default => 0
    t.column "avg_finish",     :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "num_fees",       :integer,                               :default => 0
    t.column "total_fees",     :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "percent_cash",   :decimal, :precision => 8, :scale => 2, :default => 0.0
  end

  create_table "players", :force => true do |t|
    t.column "first_name", :string
    t.column "last_name",  :string
    t.column "email",      :string
  end

  create_table "results", :force => true do |t|
    t.column "player_id",           :integer
    t.column "payout_id",           :integer
    t.column "fee_paid",            :boolean
    t.column "bounties",            :integer,                               :default => 0,   :null => false
    t.column "money_won",           :decimal, :precision => 8, :scale => 2, :default => 0.0
    t.column "bounty_collector_id", :integer
    t.column "tournament_id",       :integer
  end

  create_table "series", :force => true do |t|
    t.column "name",        :string
    t.column "is_complete", :boolean,  :default => false
    t.column "start_date",  :datetime,                    :null => false
  end

  create_table "tournaments", :force => true do |t|
    t.column "tournament_date",     :datetime
    t.column "series_id",           :integer
    t.column "num_entrants",        :integer
    t.column "payout_structure_id", :integer
  end

end
