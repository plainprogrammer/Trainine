require 'rails_helper'

RSpec.describe "dogs/edit", type: :view do
  let(:dog) {
    Dog.create!(
      name: "MyString",
      registered_name: "MyString",
      breed: "MyString",
      notes: "MyText"
    )
  }

  before(:each) do
    assign(:dog, dog)
  end

  it "renders the edit dog form" do
    render

    assert_select "form[action=?][method=?]", dog_path(dog), "post" do
      assert_select "input[name=?]", "dog[name]"

      assert_select "input[name=?]", "dog[registered_name]"

      assert_select "input[name=?]", "dog[breed]"

      assert_select "textarea[name=?]", "dog[notes]"
    end
  end
end
