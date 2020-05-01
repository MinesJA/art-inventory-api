class Location < ApplicationRecord
    belongs_to :addressable, :polymorphic => true
    
    validates_presence_of :address_1, :city, :state, :zip
    validate :is_zipcode?
    validate :is_state?
    # Todo: Make it international
    # Todo: Restrict States, ENUM?

    private 

    def is_zipcode?
        if zip.digits.size != 5
            errors.add(:zip, "Zip must be exactly 5 digits")
        end
    end

    def is_state?
        if state.length != 2
            errors.add(:state, "State must be in form of 2 letter abbreviation")
        end
    end
end
