require 'rails_helper'

RSpec.describe Dog, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:breed) }

  it { is_expected.to belong_to(:training_with).class_name("Trainer").optional }
end
