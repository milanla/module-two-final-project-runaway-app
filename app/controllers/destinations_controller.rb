class DestinationsController < ApplicationController
  def show
    @destination = Destination.find(params[:id])
    if !session[:user_id].nil?
      @user = User.find(session[:user_id])
    end
  end
end
