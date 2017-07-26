class Place < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :city
  validates_with FullAddressValidator
  validates :city,
            presence: true
end
