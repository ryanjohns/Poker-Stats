# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def get_reverse_order(order_by)
    if params[:order_by] == order_by and !params[:order].blank? and params[:order] == "desc"
      return "asc"
    else
      return "desc"
    end
  end
  
  def player_link(id)
    link_to Player.find(id).name, :controller => 'player', :action => 'view', :id => id
  end
  
  def tournament_link(id)
    link_to(Tournament.find(id).tournament_date.strftime("%B %e, %Y"), :controller => 'tournament', :action => 'view', :id => id)
  end
  
  def series_link(id)
    link_to(Series.find(id).name, :controller => 'series', :action => 'view', :id => id)
  end
  
  def title(page_title)
    content_for(:title) { page_title }
  end
end
