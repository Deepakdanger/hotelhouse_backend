require 'rails_helper'

RSpec.describe 'User', type: :model do
  it 'is not valid without an email & username' do
    user = User.new(password: '123456')
    expect(user.save).to be(false)
  end
  it 'is not valid without an password & username' do
    user = User.new(email: 'pop@gmail.com')
    expect(user.save).to be(false)
  end
  it 'is saves each field of the user' do
    user = User.new(email: 'pop@gmail.com', password: '123456',name: 'pop')
    expect(user.email).to eql('pop@gmail.com')
  end

  it 'can have many events' do
    a = User.reflect_on_association(:houses)
    expect(a.macro).to eq(:has_many)
  end
  it 'can have many events' do
    a = User.reflect_on_association(:favourites)
    expect(a.macro).to eq(:has_many)
  end
end