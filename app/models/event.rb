class Event < ApplicationRecord
  validates :artist, presence: true
  validates :description, presence: true
  validates :price_low, presence: true, numericality: true
  validates :price_high, presence: true, numericality: true
  validates :event_date, presence: true 
  
  validate :event_date_not_from_past, :event_prices
  has_many :tickets

  def event_date_not_from_past
    if event_date < Date.today
      errors.add('Data wydarzenia', 'nie może być z przeszłości')
    end
  end

  def event_prices
    if price_low > price_high
      errors.add('Cena wydarzenia', 'low nie może być wieksza od high')
    end
  end
end
