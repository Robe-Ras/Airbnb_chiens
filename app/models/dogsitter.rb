class Dogsitter < ApplicationRecord
  belongs_to :city, optional: false
  has_many :strolls
  has_many :dogs, through: :strolls
end

