class SessionsController < ApplicationController
  def new
    if !session.empty?
      session.clear
    end
  end

  def create

  end

  def destroy

  end
end
