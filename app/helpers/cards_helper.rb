module CardsHelper

  def state_change_links(card)
    if card.state == 'ready'
      doing_button(card) + done_button(card)
    elsif card.state == 'doing'
      ready_button(card) + done_button(card)
    elsif card.state == 'done'
      ready_button(card) + doing_button(card)
    end
  end

  def ready_button(card)
    button_to(ready_path(card)) do
      content_tag(:i,'', class: 'glyphicon glyphicon-alert', title: 'Ready', data: {toggle: 'tooltip'}) 
    end
  end

  def doing_button(card)
    button_to(doing_path(card)) do
      content_tag(:i,'', class: 'glyphicon glyphicon-screenshot', title: 'Doing', data: {toggle: 'tooltip'})
    end
  end

  def done_button(card)
    button_to(done_path(card)) do
      content_tag(:i,'', class: 'glyphicon glyphicon-ok-circle', title: 'Done', data: {toggle: 'tooltip'})
    end
  end


end
