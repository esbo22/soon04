class Client < ApplicationRecord
  has_many :inventaires, dependent: :destroy

  validates :nom, presence: true
  validates :ville, presence: true, length: { minimum: 3}
end
