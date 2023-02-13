require 'rails_helper'

RSpec.describe 'recipe_foods/index', type: :view do
  before(:each) do
    assign(:recipe_foods, [
             RecipeFood.create!(
               quantity: 2,
               recipe_id: 3,
               food_id: 4
             ),
             RecipeFood.create!(
               quantity: 2,
               recipe_id: 3,
               food_id: 4
             )
           ])
  end

  it 'renders a list of recipe_foods' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
  end
end
