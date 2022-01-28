class Inventaire < ApplicationRecord
  belongs_to :client
  belongs_to :facture
end
  # belongs to = appartient à
  # has many = a beaucoup
  # has and belongs to many =a et appartient à beaucoup
