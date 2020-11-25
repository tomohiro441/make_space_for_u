class SpacesController < ApplicationController
  def index
    @spaces = Space.all
    @user = User.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to "/spaces#show"
    else
      render :new
    end 
  end
    
  def show
  end

  private

  def space_params
    params.require(:space).permit(:name, :info)
  end
end
