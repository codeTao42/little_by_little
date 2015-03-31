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
    button_to(ready_path(card), title: 'Ready', data: {toggle: 'tooltip'}) do
      content_tag(:i,'', class: 'glyphicon glyphicon-alert') 
    end
  end

  def doing_button(card)
    button_to(doing_path(card), title: 'Doing', data: {toggle: 'tooltip'}) do
      content_tag(:i,'', class: 'glyphicon glyphicon-screenshot')
    end
  end

  def done_button(card)
    button_to(done_path(card), title: 'Done', data: {toggle: 'tooltip'}) do
      content_tag(:i,'', class: 'glyphicon glyphicon-ok-circle')
    end
  end


end
