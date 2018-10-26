class UsersController < ApplicationController
  def show
    @user = User.find(session[:user_id])

    if params[:like]
      @likes = @user.likes
    end
  end

  def new
    @user = User.new
  end

  def create
    @destination = Destination.find(1)
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      log_in(@user)
      redirect_to destination_path(@destination)
    else
      render :new
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
