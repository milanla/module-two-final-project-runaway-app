class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    if params[:like]
      @likes = @user.likes
    end
  end

  def new
    @user = User.new
  end

  def create
    @destination = Destination.all.sample
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to destination_path(@destination)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
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
