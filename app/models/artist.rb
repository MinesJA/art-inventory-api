class Artist < ApplicationRecord
    has_many :artworks

    validates_presence_of :first_name, :last_name
end
