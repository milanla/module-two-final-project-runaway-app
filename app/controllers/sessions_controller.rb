class SessionsController < ApplicationController
  def new
    @destination_sample = Destination.all.sample
    if !session.empty?
      session.clear
    end
  end

  def create
    @destination_sample = Destination.all.sample
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     flash[:success] = "#{user.first_name} has successfully logged in"
     redirect_to destination_path(@destination_sample)
    else
     flash.now[:danger] = "Invalid email or password"
     render 'new'
    end
  end

  def destroy
   session[:user_id] = nil
   flash[:success] = "You have logged out"
   redirect_to root_path
  end
end
