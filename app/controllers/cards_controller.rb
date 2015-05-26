class CardsController < ApplicationController

  def create
    card = Card.new(card_params)
    if card.save
      flash[:notice] = "Your new card is up"
      redirect_to board_path(current_user)
    end
  end

  ['ready', 'doing', 'done'].each do |card_state|
    define_method card_state do
      card = Card.find(params[:id])
      card.update_attribute(:state, card_state)
      redirect_to root_path  
    end
  end
  
  # def ready
  #   card = Card.find(params[:id])
  #   card.update_attribute(:state, 'ready')
  #   redirect_to root_path
  # end

  # def doing
  #   card = Card.find(params[:id])
  #   card.update_attribute(:state, 'doing')
  #   redirect_to root_path
  # end

  # def done
  #   card = Card.find(params[:id])
  #   card.update_attribute(:state, 'done')
  #   redirect_to root_path
  # end

  def show
    @card = Card.find(card_params)
  end

  def update
    card = Card.find(params[:id])
    if card.update_attributes(card_params)
      flash[:notice] = "Your card is updated"
      redirect_to board_path(current_user)
    end
  end

  def destroy
    @card = Card.find(params[:id])
    if @card.destroy
      flash[:notice] = "Your card has been deleted"
      redirect_to board_path(current_user)
    end
  end

  private

  def card_params
    params.require(:card).permit(:title, :state, :description, :board_id)
  end
end
