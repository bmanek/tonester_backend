class UsersController < ApplicationController

  def index
    # byebug
   render json: User.all, include: '**'

  end

  def login
    # session [:username] = params[:username]
    # counter = 3
    user = User.find_by(username: params[:username])

    if user
      render json: User.find(user.id), include: '**'
    else
      render json: {message: "Please try again, buddy!"}
    #   # counter -= 1
    # else counter = 0
    #   render json: {message: "Please create an account"}


    end
  end


  def show
    render json: User.find(params[:id]), include: '**'
  end

  def create

    render json: User.find_or_create_by(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:bio, :photo, :username)
  end

end
