require 'rails_helper'

RSpec.describe Food, type: :model do
  before(:each) do
    @first_food = Food.new
  end

  describe 'When the user model is tested' do
    it 'validates the name of the food' do
      @first_food.name = 'Ice Cream'
      @first_food.price = '666'
      expect(@first_food.name).to eq 'Ice Cream'
    end
  end
end
