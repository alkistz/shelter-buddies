class Animal < ApplicationRecord
  belongs_to :shelter

  validates :name, presence: true
  validates :animal_type, presence: true
end
