class CardsController < ApplicationController
  
  def create
    card = Card.new(card_params)
    current_user.cards << card
    redirect_to board_path(card)
  end

  def ready
    card = Card.find(params[:id])
    card.update_attribute(:state, 'ready')
    redirect_to root_path
  end

  def doing
    card = Card.find(params[:id])
    card.update_attribute(:state, 'doing')
    redirect_to root_path
  end

  def done
    card = Card.find(params[:id])
    card.update_attribute(:state, 'done')
    redirect_to root_path
  end

  private
    def card_params
      params.require(:card).permit(:title)
    end

end
