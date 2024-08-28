require 'rails_helper'

RSpec.describe "dogs/index", type: :view do
  before(:each) do
    assign(:dogs, [
      Dog.create!(
        name: "Pepper",
        registered_name: "Peppermint Patty",
        breed: "Australian Shepherd"
      ),
      Dog.create!(
        name: "Teko",
        breed: "Australian Shepherd"
      )
    ])
  end

  it "renders a list of dogs" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Pepper$".to_s), count: 1
    assert_select cell_selector, text: Regexp.new("Teko$".to_s), count: 1
    assert_select cell_selector, text: Regexp.new("Peppermint Patty$".to_s), count: 1
    assert_select cell_selector, text: Regexp.new("Australian Shepherd".to_s), count: 2
  end
end
