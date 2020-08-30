FactoryBot.define do
    factory :location do
        address_1 { "1st Street Ave." }
        city { "Big City" }
        state { "NC" }
        zip { "12345" }
        association :addressable, :factory => :artist
    end
end