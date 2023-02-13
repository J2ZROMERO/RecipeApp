require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @recipe = Recipe.new
  end

  describe 'When the user model is tested' do
    it 'validates the name of the user' do
      @first_user.name = 'Jose'
      expect(@first_user.valid?).to be true
    end
  end
end
