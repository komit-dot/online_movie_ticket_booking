class Movie < ApplicationRecord
  has_many :show_details
  scope :movie_name, -> {where(name: 'Nic')}


  def self.mov_name
    where(name: 'Nic')
  end 
end
