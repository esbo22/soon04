class Inventaire < ApplicationRecord
  belongs_to :client
  has_many :facture
end
