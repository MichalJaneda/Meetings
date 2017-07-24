require 'rails_helper'

RSpec.describe Country, type: :model do
  subject(:country) { build(:country) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:name)}
  it { is_expected.to validate_length_of(:name).is_at_most(255)}

  it { is_expected.to validate_uniqueness_of(:name)}
end
