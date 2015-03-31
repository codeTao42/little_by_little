Board.destroy_all
board = Board.create! title: "Building Little by Little"

board.cards = [
  Card.new(title: "Generate rails app", state: :done, description: "Set up new dir in terminal and rails new in that b"),
  Card.new(title: "Make whole app", state: :ready, description: "Create a whole new super-app called little by little"),
  Card.new(title: "Adding cards to the board", state: :doing, description: "create partial for cards")
  ]

