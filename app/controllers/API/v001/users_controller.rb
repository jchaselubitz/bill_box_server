class Api::V001::UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
  end
  

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user
    else 
      render json: { error: "Unable to create user." }, status: 400
    end
end


  def update
    @user.update(user_params)
      if @user.valid? #&& @user.image.attached?
        render json: @user
      else 
        render json: { error: "Unable to update user." }, status: 400
      end
  end

  def destroy
    @user.destroy
  end
  
  
  private
    def user_params
        params.require(:user).permit(:name, :username, :email, :password, :id)
    end

    def find_user
        @user = User.find_by(id: params[:id])
    end
end
