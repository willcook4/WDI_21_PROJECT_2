class UserController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  # before_action :user_authorization, only: [:show]


  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all.order(:username)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  private 
  # User can only see his/her profile
    def user_authorization
      redirect_to(root_path) unless current_user.id.to_i == params[:id]
    end
end
