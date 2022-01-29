class Facture < ActiveRecord::Base
  belongs_to :client
  belongs_to :inventaire
end
  # belongs to = appartient à
  # has many = a beaucoup ou à de nombreux
  # has and belongs to many =a et appartient à beaucoup
