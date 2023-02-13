require 'rails_helper'

RSpec.describe "foods/show", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      name: "Name",
      measurement: "Measurement",
      price: "9.99",
      quantity: 2,
      user_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Measurement/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
