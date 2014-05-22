class SurfboardsController < ApplicationController
  before_filter :find_surfboard, only: [:show, :edit, :update, :destroy]
  def index
    
  end

  # Ajax event fires to new route
  #   it sends across the board_type in the params
  # In the model
  #   We are creating a new method that accepts a board_type param
  #   We are rebuilding the options based on the parameter that is passed in
  #  
  # In new in the controller
  #   We are going to call a method on our Surfboard class and send in the board_type .to_json


  def new
    @surfboard = Surfboard.new
    if params[:board_type].blank?
      params[:board_type] = "Longboard"
    end
    @options = Surfboard.select_board_type(params[:board_type])
    respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    @surfboard = Surfboard.create surfboard_params
    respond_to do |format|
      format.js
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    @surfboard.update_attributes surfbard_params
    redirect_to root_path 
  end

  def destroy
    @surfboard.delete surfboard_params
    redirect_to root_path
  end
private
  def find_surfboard
    @surfboard = Surfboard.find params[:id]
  end

  def surfboard_params
    params.require(:surfboard).permit(:board_type,
      :materials,
      :graphics,
      :fin_setup,
      :fin_type,
      :tail,
      :glassing,
      :length,  
      :width,    
      :thickness,
      :special_instructions)
  end  
end
