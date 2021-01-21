class Event < ApplicationRecord
    validates :artist, :presence => true
    validates :price_low, :presence => true,  numericality: true
    validates :price_high, :presence => true , numericality: true
    validates :event_date, :presence => true
    validate :event_date_not_from_past

    has_many :tickets

    def artist_and_date
      "#{artist}: #{event_date}"
    end

  def event_date_not_from_past
    if event_date < Date.today
        errors.add('Data wydarzenia', 'nie może być z przeszłości')
    end
  end
end
