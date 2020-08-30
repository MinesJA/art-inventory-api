FactoryBot.define do
  factory :artist do 
    first_name { "John" }
    last_name  { "Doe" }

    after(:build) do |artist|
      artist.locations = build_list(:location, 1, addressable: artist)
    end

    after(:create) do |artist|
      artist.locations.each { |location| location.save! }
    end
  end
end

# def artist_with_primary_location()
#   FactoryBot.create(:artist) do |artist|
#     FactoryBot.create_list(:location, 1, addressable: [artist])
#   end
# end 