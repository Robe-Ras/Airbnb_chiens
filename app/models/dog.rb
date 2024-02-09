class Dog < ApplicationRecord
  belongs_to :city, optional: false
  has_many :strolls
  has_many :dogsitters, through: :strolls
end


