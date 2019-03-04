class Api::V001::UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def show
  end
  

  def create
    @user = User.create(user_params)
    if @user.valid?
        session[:user_id] = @user.id
        redirect_to home_path
    else
      console.log("error")
    end
end


  def update
    @user.update(user_params)
      if @user.valid? #&& @user.image.attached?
          redirect_to user_path(@user)
      else
        console.log("error")
      end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end
  
  
  private
    def user_params
        params.require(:user).permit(:name, :username :email, :password, :password_confirmation)
    end

    def find_user
        @user = User.find_by(params[:id])
    end
end
