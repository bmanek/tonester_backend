class UsersController < ApplicationController

  def index
    # byebug
   render json: User.all, include: '**'

  end

  def login
    if params[:username] == User.find_by(username: params[:username]).username
      user = User.find_by(username: params[:username]).id
      render json: {user_id: user}
    else
      render json: {message: "try harder, buddy!"}
    end
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
