class Seat < ApplicationRecord
  belongs_to :show_detail
  belongs_to :auditorium
end
puts('hello This is seat file')