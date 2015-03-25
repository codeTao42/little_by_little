class Card < ActiveRecord::Base
  belongs_to :board
  validates :title, :board, :state, presence: true

  scope :ready, -> { where(state: :ready) }
  scope :doing, -> { where(state: :doing) }
  scope :done, -> { where(state: :done) }

end
