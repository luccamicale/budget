require 'rails_helper'

RSpec.describe 'Payments', type: :model do
  subject do
    @user2 = User.create(id: 6, name: 'test', email: 'test@test.com', password: '123456', confirmed_at: Time.now.utc)
    @category2 = Category.create(id: 6, name: 'luxury', icon: nil, user_id: @user2.id)
    Payment.create(id: 6, name: 'test', amount: 1000, category_id: @category2.id, user_id: @user2.id)
  end

  it 'is a transaction valid' do
    expect(subject).to be_valid
  end

  it 'is a transaction invalid' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end