class Facture < ActiveRecord::Base
  belongs_to :client
  belongs_to :inventaire
end
