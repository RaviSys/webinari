class Workshop < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many :bookings
  has_many :customers, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :start_date, :end_date, :start_time, :end_time, :description, presence: true
  validates :total_sits, :registration_fee, presence: true, numericality: true
  validates :end_date, comparison: { greater_than: :start_date, message: 'can not be before start date' }

  scope :upcoming_workshops, -> { where('start_date > ?', Date.today) }
  scope :past_workshops, -> { where('end_date < ?', Date.today) }

  def total_duration
    "From #{start_date} to #{end_date}"
  end

  def daily_workshop_hours
    "#{((start_time.to_time - end_time.to_time)/1.hours).abs} hours"
  end

  def daily_duration
    "Everyday #{start_time} to #{end_time} (#{daily_workshop_hours})"
  end

  def is_upcoming_workshop?
    start_date > Date.today
  end

end
