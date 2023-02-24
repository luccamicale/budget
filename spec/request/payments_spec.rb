require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:each) do
    @user = User.new(name: 'cesar', email: 'cesar4a6z@gmail.com', password: '123456', password_confirmation: '123456')
    @user.save
  end

  describe 'GET payments#create' do
    it 'returns a success response' do
      get '/payments/new'
      expect(response).to be_successful
    end
  end

  describe 'GET payments#update' do
    it 'returns a success response' do
      get '/payments/1/edit'
      expect(response).to be_successful
    end
  end
end