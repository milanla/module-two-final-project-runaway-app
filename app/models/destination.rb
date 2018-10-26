class Destination < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes

  def self.id_array
    @destinations = self.all
    @id_array = @destinations.map { |d| d.id }
  end
end
