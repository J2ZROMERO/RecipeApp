require 'database_cleaner'
require 'rails_helper'
require 'spec_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @recipe = Recipe.new
  end

  describe 'When the recipes model is tested' do
    it 'validates the recipe object' do
      @recipe.name = 'Cookie'
      @recipe.public = true

      expect(@recipe.name).to eq 'Cookie'
    end
  end
end
