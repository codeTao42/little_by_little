class WelcomeController < ApplicationController
  
  def index    
    @board = current_user.boards.first
    redirect_to @board
  end
end
