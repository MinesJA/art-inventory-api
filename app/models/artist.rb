class Artist < Actor
    has_many :locations, :as => :addressable

    has_many :transactions, :as => :recipient
    has_many :transactions, :as => :supplier

    validates_presence_of :first_name, :last_name


    def create_painting(title:, height_in:, width_in:, media: [])
        byebug
        # painting.media.create(name: "oil") find or create
        # painting.media.create(name: "acryllic")
        # Painting.create().transactions.create()
        # Creates a painting object and a transaction object
    end
end
