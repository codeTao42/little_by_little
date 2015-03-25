Board.destroy_all
board = Board.create! title: "Building Little by Little"

board.cards = [
  Card.new(title: "Generate rails app", state: :done),
  Card.new(title: "Make whole app", state: :ready),
  Card.new(title: "Adding cards to the board", state: :doing)
  ]

