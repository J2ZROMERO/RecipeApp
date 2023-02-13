require 'rails_helper'

RSpec.describe 'recipes/show', type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
                                name: 'Name',
                                preparation_time: 'Preparation Time',
                                cooking_time: 'Cooking Time',
                                description: 'MyText',
                                public: false,
                                user_id: 2
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Preparation Time/)
    expect(rendered).to match(/Cooking Time/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end
