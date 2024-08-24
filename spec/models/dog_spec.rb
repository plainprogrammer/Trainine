require 'rails_helper'

RSpec.describe Dog do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :registered_name }
end
