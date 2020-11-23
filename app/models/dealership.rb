class Dealership < ApplicationRecord
  has_many :inventory_assignments
  has_many :vehicles, through: :inventory_assignments
end
