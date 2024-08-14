require "rails_helper"

RSpec.describe Dog, type: :model do
  subject(:dog) { Dog.new(name: "Pepper", breed: "Australian Shepherd", date_of_birth: Date.parse("2021-08-04")) }

  its(:name) { is_expected.to eq "Pepper" }
  its(:registered_name) { is_expected.to be_nil }
  its(:breed) { is_expected.to eq "Australian Shepherd" }
  its(:date_of_birth) { is_expected.to eq Date.parse("2021-08-04") }

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :breed }
  it { is_expected.to validate_presence_of :date_of_birth }
end
