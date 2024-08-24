# frozen_string_literal: true

require "rails_helper"

RSpec.describe Kennel::DogCardComponent, type: :component do
  subject(:content) { render_inline(component) }
  let(:component) { described_class.new(dog) }
  let(:dog) { Dog.new(name: "Pepper", registered_name: "Peppermint Patty", breed: "Australian Shepherd") }

  it "renders a Dog card component" do
    is_expected.to have_css(".kennel__dog_card")
    is_expected.to have_content("Peppermint Patty")
    is_expected.to have_content("Pepper")
    is_expected.to have_content("Australian Shepherd")
  end
end
