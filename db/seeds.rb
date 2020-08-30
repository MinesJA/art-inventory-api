# require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


MediaArtwork.delete_all
Location.delete_all
Medium.delete_all
Exhibition.delete_all
Gallery.delete_all
Artwork.delete_all
Artist.delete_all

artist = Artist.create_with_location(
    actor_data: {
        first_name: "Rachel", 
        last_name: "Rickert"
    }, 
    location_data: {
        address_1: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        zip: Faker::Address.zip
    }
)

gallery = Gallery.create_with_location(    
    actor_data: {
        name: "Gallery 1"
    },
    location_data: {
        address_1: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        zip: Faker::Address.zip
    }
)

# painting = artist.create_artwork(title: "Painting 1", height_in: "5", width_in: "5", media: ["oil", "acryllic"])

gal_ex = gallery.exhibitions.create(
    name: "Reveries",
    opening: Faker::Date.forward(days: 10),
    closing: Faker::Date.forward(days: 40)
)

byebug

gal_ex


