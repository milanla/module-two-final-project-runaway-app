class WelcomeController < ApplicationController
  def index
    @user ||= User.find(session[:user_id]) if session[:user_id]
    @destination_sample = Destination.all.sample
  end
end
