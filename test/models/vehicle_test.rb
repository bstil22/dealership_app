require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  def setup
    @vehicle = Vehicle.new(
      year: 2020,
      model: 'chevy',
      make: 'impala',
      price: 200000,
      condition: 0
    )
  end

  test 'valid vehicle' do
    assert @vehicle.valid?
  end

  test 'invalid without model' do
    @vehicle.model = nil
    refute @vehicle.valid?, 'saved vehicle without a name'
    assert_not_nil @vehicle.errors[:model], 'no validation error for name present'
  end

  test 'invalid without make' do
    @vehicle.make = nil
    refute @vehicle.valid?
    assert_not_nil @vehicle.errors[:make]
  end

  test 'invalid without price' do
    @vehicle.price = nil
    refute @vehicle.valid?
    assert_not_nil @vehicle.errors[:price]
  end

  test 'invalid without year' do
    @vehicle.year = nil
    refute @vehicle.valid?
    assert_not_nil @vehicle.errors[:year]
  end

  test 'invalid without condition' do
    @vehicle.condition = nil
    refute @vehicle.valid?
    assert_not_nil @vehicle.errors[:condition]
  end
end
