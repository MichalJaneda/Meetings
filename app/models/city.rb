class City < ApplicationRecord
  belongs_to :country
  validates :name,
            presence: true,
            uniqueness: { scope: :country_id },
            length: { maximum: 255 }
end