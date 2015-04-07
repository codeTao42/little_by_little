class Board < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :user
  has_many :cards, dependent: :delete_all
end
