require 'rails_helper'
require 'database_cleaner'

RSpec.describe 'recipes/show', type: :view do
  before(:each) do
    @user1 = User.create(name: 'jose1test', email: 'user1@hotmail.com', password: 123_456,
                         password_confirmation: 123_456)
    @recipe = assign(:recipe, Recipe.create!(
                                name: 'Name',
                                preparation_time: 'Preparation Time',
                                cooking_time: 'Cooking Time',
                                description: 'MyText',
                                public: true,
                                user_id: @user1.id
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
