require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:each) do
    @user = User.new(name: 'lucca', email: 'luccamicale2015@gmail.com', password: '123456', password_confirmation: '123456')
    @user.save
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get '/users'
      expect(response).to have_http_status(302)
    end
  end
end