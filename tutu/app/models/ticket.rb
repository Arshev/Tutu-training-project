class Ticket < ApplicationRecord
  belongs_to :train
  belongs_to :user
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id

  validates :serial_number, presence: true
  before_validation :set_number, on: :create

  after_create :send_notification
  before_destroy :cancel_ticket

  def route_name
    "#{start_station.title} - #{end_station.title}"
  end

  private

  def send_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def cancel_ticket
    TicketsMailer.cancel_ticket(self.user, self).deliver_now
  end

  def set_number
    self.serial_number = ["a".."z", "A".."Z", "0".."9"].map(&:to_a).flatten.sample(8).join
  end
end
