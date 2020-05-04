class Gallery < Actor
    has_many :locations, :as => :addressable
    has_many :exhibitions, :as => :organizer

    has_many :transactions, :as => :recipient
    has_many :transactions, :as => :supplier

    validates_presence_of :name
end