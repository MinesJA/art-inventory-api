class Gallery < ApplicationRecord
    has_many :locations, :as => :addressable
    has_many :exhibitions, :as => :venuable

    validates_presence_of :name
    validates :locations, presence: true

    def self.create_with_location(name:, address_1:, city:, state:, zip:)
        gallery = self.new(name)
        byebug
        location = gallery.locations.new do |l|
            address_1 = address_1
            city = city
            state = state
            zip = zip
        end
        gallery.save
        location.save
        gallery
    end




end
