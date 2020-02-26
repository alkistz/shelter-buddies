class Booking < ApplicationRecord
  belongs_to :volunteer
  belongs_to :animal

  validates :time_slot, presence: true
end
