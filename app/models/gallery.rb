class Gallery < ApplicationRecord
    has_many :locations, :as => :addressable
    has_many :exhibitions, :as => :organizer

    validates_presence_of :name
    validates :locations, presence: true

    # Todo: should make this "create_with_primary_location"
    def self.create_with_location(name:, address_1:, city:, state:, zip:)
        gallery = self.create(name: "Gallery 1")
        gallery.locations.new(address_1: address_1, city: city, state: state, zip: zip)
        gallery.save
        gallery
    end

end