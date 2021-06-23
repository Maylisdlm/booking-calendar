class Calendar < ApplicationRecord
  has_many :dates
  belongs_to :city
end
