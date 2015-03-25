class Board < ActiveRecord::Base
  validates :title, presence: true
  has_many :cards, dependent: :delete_all
end
