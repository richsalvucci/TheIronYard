class DvdsController < ApplicationController
  
  def show
    @dvd = Dvd.find params[:id]
  end

  def new
    @dvd = Dvd.new
  end

  def create
    @dvd = Dvd.new dvd_params
    if @dvd.save
      flash[:notice] = "You can type. Yay!"
      redirect_to root_path
    else 
      flash[:error] = "What did you forget?"
      render :new
    end
  end  

  def edit
    @dvd = Dvd.find params[:id]
  end

  def update
    @dvd = Dvd.find params[:id]
    @dvd.update_attributes dvd_params
    redirect_to root_path
  end

  def destroy
    @dvd = Dvd.find params[:id]
    @dvd.delete
    redirect_to root_path
  end

  private
  def dvd_params
    params.require(:dvd).permit(:title, :release, :genre, :director, :rating, :actors, :length, :description)
  end
end

