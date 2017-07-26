class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable

  validates :name,
            presence: true,
            length: { maximum: 255 }
  validates :email,
            presence: true,
            uniqueness: true
end
