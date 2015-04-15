class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :boards

  after_create :initialize_board

  

  private

  def initialize_board
    boards << Board.create( title: "Welcome to Little By Little", cards: [
      Card.new(title: "What do you need to get done?", state: :ready),
      Card.new(title: "Now, create your first card!", state: :ready),
      Card.new(title: "You've created your first Board!", state: :done)
    ])

  end


end
