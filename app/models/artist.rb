class Artist < Actor
    has_many :locations, :as => :addressable

    has_many :transactions, :as => :recipient
    # has_many :transactions, :as => :supplier

    validates_presence_of :first_name, :last_name


    def create_artwork(title:, height_in:, width_in:, media: [])
        # Needs to find or create media
        media_map = media.map{ |med| Medium.find_or_create_by(name: med) }
        artwork = Artwork.create(title: title, height_in: height_in, width_in: width_in)        
        transaction = Transaction.create_genesis(artwork: artwork, creator: self, location: self.get_primary_location)
        # Needs to create a new genesis transaction
        byebug

        # Needs to create artwork associated with genesis transaction

        # Create validations for Artwork (can't be created without transaction)
        #   then create factory method for Artwork, which checks .valid? before creating
        #   ensures Artwork can't be created without a transaction
        
        # artwork.media = media_map

        # transaction = self.transactions.new(artwork: artwork, location: artist.locations.first)

        # artwork.media.fi

        # painting.media.create(name: "oil") find or create
        # painting.media.create(name: "acryllic")
        # Painting.create().transactions.create()
        # Creates a painting object and a transaction object
    end

    def get_primary_location()
        self.locations.first
    end
end
