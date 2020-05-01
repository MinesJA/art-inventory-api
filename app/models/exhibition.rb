class Exhibition < ApplicationRecord
    has_one :location, :as => :addressable

    belongs_to :organizer, :polymorphic => true

    validates_presence_of :name
    validates_presence_of :opening
    validates_presence_of :closing

    # def location
    #     byebug
    # end
    
end
