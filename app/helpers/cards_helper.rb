module CardsHelper

  def state_change_links(card)
    if card.state == 'ready'
      button_to( "Doing", doing_path(card)) +
      button_to( "Done", done_path(card))
    elsif card.state == 'doing'
      button_to( "Ready", ready_path(card)) +
      button_to( "Done", done_path(card))
    elsif card.state == 'done'
      button_to( "Ready", ready_path(card)) +
      button_to( "Doing", doing_path(card))
    end



      
  end
end