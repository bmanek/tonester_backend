class UsersController < ApplicationController

  def index
    # byebug
   render json: User.all, include: '**'

  end
  
  def login 
    
  
  end 

  def show
    
    render json: User.find(params[:id])
  end

  def create
  
    render json: User.find_or_create_by(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:bio, :photo, :username)
  end

end
