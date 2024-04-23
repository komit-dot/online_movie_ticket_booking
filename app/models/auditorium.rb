class Auditorium < ApplicationRecord
  has_many :show_details
  has_many :seats
end
