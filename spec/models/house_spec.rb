require 'rails_helper'

RSpec.describe House, type: :model do
  it 'should belong to the user' do
    a = House.reflect_on_association(:favourites)
    expect(a.macro).to eq(:has_many)
  end
  it 'should belong to the user' do
    house1 = House.create(title: "Big room Unfurnished",cost: "31000",location: "U.S",category:"Room")
    expect(house1.save).to be(true)
  end
end