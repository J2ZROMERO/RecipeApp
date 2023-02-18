require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @first_user = User.new(name: "jose1", email: 'user1@hotmail.com', password: 123456, password_confirmation: 123456)
  end

  describe 'When the user model is tested' do
    it 'validates the name of the user' do
        expect(@first_user.valid?).to be true
    end
  end
end
