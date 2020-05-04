class Curator < Actor
    has_many :exhibitions, :as => :organizer

    has_many :transactions, :as => :recipient
    has_many :transactions, :as => :supplier

    validates_presence_of :name

    def self.create_with_location(name:, address_1:, city:, state:, zip:)
        # Should curator create with a location?
    end
end