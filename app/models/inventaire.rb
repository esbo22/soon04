class Inventaire < ApplicationRecord
  belongs_to :client
  has_many :facture
end
  # belongs to = appartient à
  # has many = a beaucoup
  # has and belongs to many =a et appartient à beaucoup
