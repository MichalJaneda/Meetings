require 'rails_helper'

RSpec.describe Place, type: :model do
  subject(:place) do
    build :place,
          address: 'Some address',
          building: 'A1',
          local: '21B'
  end

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:city) }

end
