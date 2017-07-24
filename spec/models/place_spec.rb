require 'rails_helper'

RSpec.describe Place, type: :model do
  subject(:place) { build(:place) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:address) }
end
