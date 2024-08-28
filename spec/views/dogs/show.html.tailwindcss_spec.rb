require 'rails_helper'

RSpec.describe "dogs/show", type: :view do
  before(:each) do
    assign(:dog, Dog.create!(
      name: "Name",
      registered_name: "Registered Name",
      breed: "Breed",
      notes: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Registered Name/)
    expect(rendered).to match(/Breed/)
    expect(rendered).to match(/MyText/)
  end
end
