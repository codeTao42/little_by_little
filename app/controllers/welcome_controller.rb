class WelcomeController < ApplicationController
  
  def index    
    @board = Board.first
  end
end
