class Exhibition < ApplicationRecord
    has_one :location, :as => :addressable

    belongs_to :venuable, :polymorphic => true

    validates_presence_of :name
    validates_presence_of :opening
    validates_presence_of :closing
end
