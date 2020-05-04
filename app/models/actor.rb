class Actor < ApplicationRecord
    self.abstract_class = true

    def artworks
        # self.receiver_transactions
        #       .where(next == nil)
        #       .map(t => artwork)

        
    end

    # Todo: should make this "create_with_primary_location"
    def self.create_with_location(name:, address_1:, city:, state:, zip:)
        gallery = self.create(name: "Gallery 1")
        gallery.locations.new(address_1: address_1, city: city, state: state, zip: zip)
        gallery.save
        gallery
    end

end