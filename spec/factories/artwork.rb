FactoryBot.define do
    factory :artwork do
        title { "A Great Painting" }
        height_in { 5.00 }
        width_in { 6.00 }

        after(:build) do |artwork|
            artwork.transactions = build_list(:transaction, 1, artwork: artwork)
        end
        
        after(:create) do |artwork|
            artist.transactions.each { |transaction| transaction.save! }
        end
      
    end
end