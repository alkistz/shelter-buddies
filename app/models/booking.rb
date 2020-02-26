class Booking < ApplicationRecord
  belongs_to :volunteer
  belongs_to :animal
end
