class Curator < ApplicationRecord
    has_many :exhibitions, :as => :organizer

    validates_presence_of :name
end