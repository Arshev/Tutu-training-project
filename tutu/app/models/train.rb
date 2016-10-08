class Train < ApplicationRecord
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route
  has_many :tickets
  has_many :wagons

  validates :number_train, presence: true

  def count_wagon(type)
    x = 0
    
    @train.wagons.each do |wagon|
        if wagon.type_wagon == type
        x += 1
        end
      end
      x
  end
  
end
