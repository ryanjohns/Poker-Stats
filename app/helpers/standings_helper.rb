module StandingsHelper
  
  def sort_column(col_title, db_field_name, action="index")
    html = link_to col_title, {:action=>action, :order_by=>db_field_name, :order=>get_reverse_order(db_field_name)}
    html << (@order_by == db_field_name ? (@order == 'asc' ? '<img src="/images/down_arrow.gif" alt="down_arrow" />' : '<img src="/images/up_arrow.gif" alt="up_arrow" />') : '')
    html
  end
  
end
