class BoardsController < ApplicationController

  def create
    board = Board.new(board_params)
    current_user.boards << board
    redirect_to board_path(board)
  end

  def update
    board = current_user.boards.find(params[:id])
    board.update_attribute(:title, params[:board][:title])
    redirect_to root_path
  end

  def show
    @board = current_user.boards.find(params[:id])
  end

  private
    def board_params
      params.require(:board).permit(:title)
    end
end