class Vehicle < ApplicationRecord
  validates :make, :model, :year, :price, presence: true
  has_many :inventory_assignments
  has_many :dealerships, through: :inventory_assignments

  def price_in_dollars
    price.to_d/100 if price
  end

  def price_in_dollars=(dollars)
    self.price = dollars.to_d*100 if dollars.present?
  end

  def display_name
    "#{year} #{make} #{model}"
  end
end
