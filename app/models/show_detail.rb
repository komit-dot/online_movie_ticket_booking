class ShowDetail < ApplicationRecord
  belongs_to :auditoriam
  belongs_to :movie
  has_many :seats
end
