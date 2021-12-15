require 'rails_helper'

RSpec.describe Favourite, type: :model do
  it 'is not valid without an house_id' do
    favourite = Favourite.new(user_id: 1)
    expect(favourite.save).to be(false)
  end
  it 'is not valid without an password' do
    favourite = Favourite.new(house_id: 1)
    expect(favourite.save).to be(false)
  end
end
