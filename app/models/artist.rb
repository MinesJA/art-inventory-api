class Artist < ApplicationRecord
    has_many :artworks
    has_many :locations, :as => :addressable

    validates_presence_of :first_name, :last_name
end
