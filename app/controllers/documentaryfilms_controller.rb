class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryfilm = Documentaryfilm.all
  end

  def new
    @documentaryfilm = Documentaryfilm.new 
  end

  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilms_params)
    
    if @documentaryfilm.save
      redirect_to documentaryfilms_index_path      
    else
      render :new
    end 
  end

  private 
  def documentaryfilms_params
    params.require(:documentaryfilm).permit(:name, :synopsis, :director)
  end 
end
