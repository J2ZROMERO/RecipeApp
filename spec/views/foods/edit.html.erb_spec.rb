require 'rails_helper'

RSpec.describe "foods/edit", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      name: "MyString",
      measurement: "MyString",
      price: "9.99",
      quantity: 1,
      user_id: 1
    ))
  end

  it "renders the edit food form" do
    render

    assert_select "form[action=?][method=?]", food_path(@food), "post" do

      assert_select "input[name=?]", "food[name]"

      assert_select "input[name=?]", "food[measurement]"

      assert_select "input[name=?]", "food[price]"

      assert_select "input[name=?]", "food[quantity]"

      assert_select "input[name=?]", "food[user_id]"
    end
  end
end
