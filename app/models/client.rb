class Client < ApplicationRecord
  has_many :inventaires, dependent: :destroy
  has_many :facture

  validates :nom, presence: true
  validates :ville, presence: true, length: { minimum: 3}
end
  # belongs to = appartient à
  # has many = a beaucoup
  # has and belongs to many =a et appartient à beaucoup
