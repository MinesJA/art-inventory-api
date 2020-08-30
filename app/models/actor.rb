class Actor < ApplicationRecord
    self.abstract_class = true

    def artworks
        # self.receiver_transactions
        #       .where(next == nil)
        #       .map(t => artwork)
    end

    # Todo: should make this "create_with_primary_location"
    def self.create_with_location(actor_data:, location_data:)
        actor = self.create(actor_data)
        actor.locations.new(location_data)
        actor.save
        actor
    end

    def create_genesis_transaction(artwork:, recipient:)
        self.transactions.create(artwork, recipient)
    end

end