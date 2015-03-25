class Card < ActiveRecord::Base
  belongs_to :board
  validates :title, :board, :state, presence: true
end
