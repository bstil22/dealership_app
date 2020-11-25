require 'test_helper'

class DealershipTest < ActiveSupport::TestCase
  def setup
    @dealer = Dealership.new(name: 'The Best Dealer')
  end

  test 'valid dealer' do
    assert @dealer.valid?
  end

  test 'invalid without name' do
    @dealer.name = nil
    refute @dealer.valid?, 'saved dealer without a name'
    assert_not_nil @dealer.errors[:name], 'no validation error for name present'
  end
end
