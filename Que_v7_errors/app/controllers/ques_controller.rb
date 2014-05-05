class QuesController < ApplicationController
  before_action :authenticate_user!
  # def index
  #   # GET
  #   # List of data
  #   # Replaced by our home index CURRENTLY
  # end
  def index
    @ques = if params[:q]
      Que.search_names params[:q]
    else
      Que.all
    end
    respond_to do |format|
      format.js
    end
  end

  def new
    @que = Que.new
  end

  def show
    @que = Que.find params[:id]
  end

  def create
    @que = Que.new que_params
    success = @que.save
    if success == true
      flash[:notice] = "You are in the Que."
      redirect_to root_path
    else
      flash[:error] = "You need to enter more information before entering le Que."
      render :new
    end
  end

  def edit
    @que = Que.find params[:id]
  end

  def update
    @que = Que.find params[:id]
    success = @que.update_attributes que_params
    if success == true
      flash[:notice] = "You have successfully updated the Que."
      redirect_to root_path
    else
      flash[:error] = "You need to enter more information before editing your Que."
      render :edit
    end
  end

  def destroy
    @que = Que.find params[:id]
    @que.delete
    redirect_to root_path
  end

  def help_student
    @que = Que.find params[:id]
    @que.nick_visit!
    respond_to do |format|
      format.js
    end
  end

  def resolve_student
    @que = Que.find params[:id]
    @que.nick_leave!
    respond_to do |format|
      format.js
    end
  end

  def try_helping_student
    @que = Que.find params[:id]
    @que.nick_tried_helping!
    respond_to do |format|
      format.js
    end
  end

  def search_names
    @search_names = Que.search_names params[:q]
  end

  def help_me
    @que = Que.create({name: "#{current_user.name}", email: "#{current_user.email}"})
    redirect_to root_path
  end 
  
  private
    def que_params
      params.require(:que).permit(:name, :email, :image)
    end

end
