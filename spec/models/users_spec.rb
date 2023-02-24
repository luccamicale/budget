require 'rails_helper'

RSpec.describe 'Users', type: :model do
  subject do
    User.create(id: 8, name: 'Lucca', email: 'luccamicale2015@gmail.com', password: '123123', confirmed_at: Time.now.utc)
  end
  
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'has many groups' do
    expect(subject).to respond_to(:payments)
  end

  it 'has many transactions' do
    expect(subject).to respond_to(:categories)
  end
end