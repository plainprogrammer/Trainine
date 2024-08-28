require 'rails_helper'

RSpec.describe "dogs/new", type: :view do
  before(:each) do
    assign(:dog, Dog.new(
      name: "MyString",
      registered_name: "MyString",
      breed: "MyString",
      notes: "MyText"
    ))
  end

  it "renders new dog form" do
    render

    assert_select "form[action=?][method=?]", dogs_path, "post" do
      assert_select "input[name=?]", "dog[name]"

      assert_select "input[name=?]", "dog[registered_name]"

      assert_select "input[name=?]", "dog[breed]"

      assert_select "textarea[name=?]", "dog[notes]"
    end
  end
end
