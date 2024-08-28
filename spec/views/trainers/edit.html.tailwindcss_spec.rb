require 'rails_helper'

RSpec.describe "trainers/edit", type: :view do
  let(:trainer) {
    Trainer.create!(
      name: "MyString",
      phone: "MyString",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:trainer, trainer)
  end

  it "renders the edit trainer form" do
    render

    assert_select "form[action=?][method=?]", trainer_path(trainer), "post" do
      assert_select "input[name=?]", "trainer[name]"

      assert_select "input[name=?]", "trainer[phone]"

      assert_select "input[name=?]", "trainer[email]"
    end
  end
end
