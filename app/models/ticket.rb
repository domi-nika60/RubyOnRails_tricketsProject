class Ticket < ApplicationRecord
    validates :name, presence: true, length: { minimum: 6}
    validates :email_address, presence: true
    validates :price, presence: true
    validates :address, presence: true
    validate :price_not_in_limits
    
    belongs_to :event

    def price_not_in_limits
        if price > event.price_high || price < event.price_low
            errors.add('price',' nie w zakresie')
        end
      end
end
