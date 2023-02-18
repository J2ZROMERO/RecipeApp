require 'database_cleaner'
require 'rails_helper'
require 'spec_helper'

RSpec.describe 'RecipesController', type: :system do
  before(:each) do
@user1 = User.create(name: "jose1", email: 'user1@hotmail.com', password: 123456, password_confirmation: 123456)
@user2 = User.create(name: "jose2", email: 'user2@hotmail.com', password: 123456, password_confirmation: 123456)
@user3 = User.create(name: "jose3", email: 'user3@hotmail.com', password: 123456, password_confirmation: 123456)

@recipe1 = Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user1)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user1)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user1)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user2)
Recipe.create(name: 'tacos',preparation_time: '1.5', cooking_time: '1.1',description: 'this is prepared with',public: true, user_id: @user3)


  end

  describe 'index' do
    it 'I can see the profile picture for the user selected' do
      # navigate to the index page with the especific index.
      visit general_shoping_list__total_recipe
      # assert that the profile picture is present.

      assert page.has_content?(@recipe1.name)
    end
  
end 
end

