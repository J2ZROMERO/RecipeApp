require 'rails_helper'

RSpec.describe 'foods/index', type: :view do
  before(:each) do
    assign(:foods, [
             Food.create!(
               name: 'Name',
               measurement: 'Measurement',
               price: '9.99',
               quantity: 2,
               user_id: 3
             ),
             Food.create!(
               name: 'Name',
               measurement: 'Measurement',
               price: '9.99',
               quantity: 2,
               user_id: 3
             )
           ])
  end

  it 'renders a list of foods' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Measurement'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
  end
end
