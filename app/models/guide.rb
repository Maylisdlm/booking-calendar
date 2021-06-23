class Guide < ApplicationRecord
  belongs_to :city
  has_many :booking_dates
end
