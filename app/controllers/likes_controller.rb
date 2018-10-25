class LikesController < ApplicationController
  before_action :find_like, only: [:destroy]

  def create
    @destination = Destination.find(params[:destination_id])
    if already_liked?
      flash.now[:notice] = "You can't like more than once!"
    else
      @destination.likes.create(user_id: session[:user_id])
      redirect_to destination_path(@destination)
    end
  end

 def destroy
   # @destination = Destination.find(params[:id])
   if !(already_liked?)
     flash[:notice] = "Cannot unlike"
   else
     @like.destroy
   end
   redirect_to destination_path(@destination)
 end

  private

  def already_liked?
    Like.where(user_id: session[:user_id], destination_id: params[:destination_id]).exists?
  end

  def find_like
    @destination = Destination.find(params[:destination_id])
    @like = @destination.likes.find(params[:id])
  end
end
