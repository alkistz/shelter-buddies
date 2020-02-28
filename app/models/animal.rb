class Animal < ApplicationRecord
  belongs_to :shelter
  has_one_attached :photo
  validates :name, presence: true
  validates :animal_type, presence: true
  has_many :bookings
end
