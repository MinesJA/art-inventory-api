class Artist < Actor
    has_many :locations, :as => :addressable

    has_many :transactions, :as => :recipient
    # has_many :transactions, :as => :supplier

    validates_presence_of :first_name, :last_name


    def create_artwork(title:, height_in:, width_in:, media: [])
        media_map = media.map(med => Medium.find_or_create_by(name: med))
        
        artwork = Artwork.create(title: title, height_in: height_in, width_in: width_in)
        # artwork.media = media_map

        transaction = self.transactions.new(artwork: artwork, location: artist.locations.first)

        byebug




        # artwork.media.fi

        # painting.media.create(name: "oil") find or create
        # painting.media.create(name: "acryllic")
        # Painting.create().transactions.create()
        # Creates a painting object and a transaction object
    end
end
