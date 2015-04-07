class BoardsController < ApplicationController

  def update
    board = Board.find(params[:id])
    board.update_attribute(:title, params[:board][:title])
    redirect_to root_path
  end

end