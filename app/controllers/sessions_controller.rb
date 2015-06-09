class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      session[:current_user] = @user.id
      redirect_to @user
    else
      flash.now[:notice] = "User not found"
      render :new
    end
  end
end
