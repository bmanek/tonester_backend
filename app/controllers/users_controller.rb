class UsersController < ApplicationController

  def index
    # byebug
   render json: User.all, include: '**'

  end

  def login
    
    user = User.find_by(username: params[:username])

    if user
      render json: User.find(user.id), include: '**'
    else
      render json: {message: "Please try again, buddy!"}
      
    end
  end
  
  def update
   
    user = User.find(params[:id])
    if user
      user.update_attributes(user_params)
      render json: user 
    else 
      render json: {message: "not edited"}
    end
  end

  def show
    render json: User.find(params[:id]), include: '**'
  end

  def create
    if User.find_by(username: params[:username])
      render json: {message: "Username Taken"}
    else
    newUser = User.find_or_create_by(user_params)
    render json: newUser
    end
  end

  private
  def user_params
    params.require(:user).permit(:bio, :photo, :username)
  end

end
