class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new 
  end

  def create
    @show = Show.new(shows_params)
    
    if @show.save
      redirect_to shows_index_path      
    else
      render :new
    end 
  end

  private 
  def shows_params
    params.require(:show).permit(:name, :synopsis, :director)
  end 
end
