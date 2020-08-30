class Medium < ApplicationRecord
    has_many :media_artworks
    has_many :artworks, through: :media_artworks

    validates_presence_of :name
end