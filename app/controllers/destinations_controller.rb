class DestinationsController < ApplicationController
  def show
    @destination = Destination.find(params[:id])
    @user = User.find(params[:id])
  end
end
