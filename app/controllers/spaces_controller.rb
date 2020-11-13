class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end
  
  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to show
    else  
      render :new
    end

  def show
  end  

  private 

  def space_params
    params.require(:space).permit(:name, :info)
  end 

  end
end
