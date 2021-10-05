class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[show]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
