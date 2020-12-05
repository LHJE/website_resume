class UsersController < ApplicationController
  before_action :require_user, only: :show
  
  def new
    @user = User.new
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
