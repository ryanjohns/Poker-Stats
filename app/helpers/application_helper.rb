# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def get_reverse_order(order_by)
    if params[:order_by] == order_by and !params[:order].blank? and params[:order] == "desc"
      return "asc"
    else
      return "desc"
    end
  end
end
