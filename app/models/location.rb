class Location < ApplicationRecord
    belongs_to :addressable, :polymorphic => true
    # Todo: Make it international

    validates_presence_of :address_1, :city, :state, :zip
end
