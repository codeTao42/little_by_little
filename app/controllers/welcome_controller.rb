class WelcomeController < ApplicationController
  
  def index    
    @board = current_user.boards.first
  end
end
