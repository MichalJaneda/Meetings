require 'rails_helper'

RSpec.describe Meeting, type: :model do
  subject(:meeting) do
    build :meeting,
          attenders_limit: 100,
          current_attenders: 0,
          ticket_price: 100,
          date: Time.now + 7.days
  end

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:user) }

  it { is_expected.to validate_presence_of(:city) }

  it { should validate_inclusion_of(:attenders_limit).in_range(0..1000) }

  it { should validate_inclusion_of(:ticket_price).in_range(0..200) }

  context 'when ticket price greater than 0' do
    let(:ticket_price) { 1 }
    it 'is not free' do
      subject.ticket_price = 1
      subject.save
      expect(subject.free).to eq false
    end
  end

  context 'when ticket price is 0' do
    let(:ticket_price) { 0 }
    it 'is free' do
      subject.ticket_price = 0
      subject.save
      expect(subject.free).to eq true
    end
  end

  context 'when date before creation' do
    let(:date) { Time.now - 1.day }

    it 'is invalid' do
      subject.date = Time.now - 1.day
      expect(subject).to be_invalid
    end
  end

end
