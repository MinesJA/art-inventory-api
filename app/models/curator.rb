class Curator < ApplicationRecord
    has_many :exhibitions, :as => :venuable

    validates_presence_of :name
end
