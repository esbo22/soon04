class Facture < ActiveRecord::Base
  belongs_to :client
  has_many :inventaire
end
  # belongs to = appartient à
  # has many = a beaucoup ou à de nombreux
  # has and belongs to many =a et appartient à beaucoup
