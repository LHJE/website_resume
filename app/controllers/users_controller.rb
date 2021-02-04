class UsersController < ApplicationController
  before_action :require_user, only: :show

  def new
    @user = User.new
  end

  def show
    @user = current_user
    lat_and_long = SearchFacade.find_lat_and_long("denver, co")
    forecast = WeatherFacade.get_current_forecast(lat_and_long[:lat], lat_and_long[:lng])
    @todays_image = ImageFacade.get_image(forecast.current_weather, lat_and_long)
  end

  def edit
    @user = current_user
  end

  def edit_password
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome, #{@user.name}!"
      redirect_to profile_path
    else
      generate_flash(@user)
      render :new
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:notice] = 'Profile has been updated!'
      redirect_to profile_path
    else
      generate_flash(@user)
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
