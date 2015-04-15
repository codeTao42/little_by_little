class Board < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :user
  has_many :cards, dependent: :destroy

  after_create :initialize_card

  def initialize_card
    cards << Card.create( title: "Name this card", :board, state: :ready)
  end
end
