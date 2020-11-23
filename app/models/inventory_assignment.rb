class InventoryAssignment < ApplicationRecord
  belongs_to :vehicle
  belongs_to :dealership
end
