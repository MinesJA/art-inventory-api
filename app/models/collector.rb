class Collector < ApplicationRecord
    has_many :locations, :as => :addressable

    validates_presence_of :name, :email
end
