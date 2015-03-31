class CardsController < ApplicationController
  
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
end
