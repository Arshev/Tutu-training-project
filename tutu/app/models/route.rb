class Route < ApplicationRecord
  validates :name, presence: true

  has_and_belongs_to_many :railway_station
end