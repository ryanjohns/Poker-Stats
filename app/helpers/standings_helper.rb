module StandingsHelper
  
  def sort_column(col_title, db_field_name=nil, action="index")
    db_field_name ||= col_title.gsub("Number", "num").gsub("Average", "avg").gsub("of ", "").gsub(" ", "_").downcase
    html = link_to col_title, {:action=>action, :order_by=>db_field_name, :order=>get_reverse_order(db_field_name)}
    html << (@order_by == db_field_name ? (@order == 'asc' ? '<img src="/images/down_arrow.gif" />' : '<img src="/images/up_arrow.gif" />') : '')
    html
  end
  
end
