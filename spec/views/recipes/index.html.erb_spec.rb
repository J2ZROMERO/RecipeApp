require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  before(:each) do
    assign(:recipes, [
             Recipe.create!(
               name: 'Name',
               preparation_time: 'Preparation Time',
               cooking_time: 'Cooking Time',
               description: 'MyText',
               public: false,
               user_id: 2
             ),
             Recipe.create!(
               name: 'Name',
               preparation_time: 'Preparation Time',
               cooking_time: 'Cooking Time',
               description: 'MyText',
               public: false,
               user_id: 2
             )
           ])
  end

  it 'renders a list of recipes' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Preparation Time'.to_s, count: 2
    assert_select 'tr>td', text: 'Cooking Time'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
