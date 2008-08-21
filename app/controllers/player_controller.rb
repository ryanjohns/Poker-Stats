class PlayerController < ApplicationController
  
  def index
    @players = Player.find(:all, :order => 'last_name')
  end
  
  def edit
    @player = Player.find_by_id(params[:id]) || Player.new
    if request.post?
      @player.attributes = params[:player]
      redirect_to :action => 'index' if @player.save
    end
  end
end
