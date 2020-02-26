class Animal < ApplicationRecord
  belongs_to :shelter
  has_one_attached :photo
end
