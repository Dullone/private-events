class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = @user.attending_events.where("date >= ?", Time.now)
    @past_events     = @user.attending_events.where("date < ?", Time.now)
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end
end
