require 'rails_helper'

describe FullAddressValidator do
  subject { Validatable.new(address: address, building: building, local: local) }
  let(:address) { Faker::Name.name_with_middle }
  let(:building) { Faker::Number.hexadecimal(2) }
  let(:local) { Faker::Number.hexadecimal(4) }

  it { is_expected.to be_valid }

  describe 'address' do

    context 'when nil' do
      let(:address) { nil }
      it { is_expected.to be_invalid }
    end

  end

  describe 'building' do

    context 'when address is not nil' do

      context 'when local is nil' do
        let(:local) { nil }
        it { is_expected.to be_valid}
      end

    end

  end

  describe 'local' do

    context 'when building is nil' do
      let(:building) { nil }
      it { is_expected.to be_invalid }
    end

  end

end

class Validatable
  include ActiveModel::Validations
  validates_with FullAddressValidator
  attr_accessor :address, :building, :local

  def initialize(address:, building:, local:)
    @local = local
    @building = building
    @address = address
  end
end