module StandingsHelper
  
  def sort_column(col_title, db_field_name=nil)
    db_field_name ||= col_title.gsub("Number", "num").gsub("Average", "avg").gsub("of ", "").gsub(" ", "_").downcase
    link_to col_title, {:action=>'index', :order_by=>db_field_name, :order=>get_reverse_order(db_field_name)}
  end
  
end
