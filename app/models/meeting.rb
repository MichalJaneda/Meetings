class Meeting < ApplicationRecord
  before_validation :check_being_free

  belongs_to :user
  belongs_to :city

  validate :date_after_now
  validates :user,
            presence: true
  validates :city,
            presence: true
  validates_inclusion_of :attenders_limit, in: 0..1000
  validates_inclusion_of :ticket_price, in: 0..200

  private

  def check_being_free
    self.free = ticket_price.zero?
  end

  def date_after_now
    errors.add(:date, 'Can not be lower than now') if date < Time.now
  end
end
