require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:each) do
    @first_recipe = Food.new
  end

  describe 'When the user model is tested' do
    it 'validates the name of the food' do
      @first_recipe.quantity = '250g'
    
        expect(@first_recipe.quantity).to eq '250g'
    end
  end
end
