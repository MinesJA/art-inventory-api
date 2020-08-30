require 'rails_helper'

RSpec.describe Artist, type: :model do

  it { should have_many(:locations) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it 'can be created with a location' do
    artist = Artist.create_with_location(
      location_data: {
        address_1: "1st Street Ave.",
        city: "Big City",
        state: "NC",
        zip: "12345"
      },
      actor_data: {
        first_name: "Alice", 
        last_name: "Carlsen"
      }
    )

    expect(artist.id).to be_truthy
    expect(artist.locations.count).to be >= 1
    expect(artist.locations.first.id).to be_truthy
  end

  # it 'can create an artwork which should generate a transaction for that creation' do
  #   artist = create(:artist)
  #   artist.create_artwork(title: "Title of Piece", width_in: 5, height_in: 5, media: ["Oil"])
  # end

  # It should return all created artwork for artist


  # It should return all availible artwork for availible_artworks
  # It should 

  

  # it { should have_many(:artworks) } through transactions
  # Goes through Actor super class
    # Exhibition that is created in association with gallery should have that galleries address
    # it 'should give gallery location if no location provided and associated with gallery' do
    #   gallery = Gallery.create_with_location(name: "name", address_1: "address", city: "city", state: "NY", zip: 11111)
    #   exhibition = gallery.exhibitions.create(name: "Exhibition 1", opening: DateTime.now, closing: DateTime.now + 10.days)
    #   location = gallery.locations.first
    #   exhibition.update(location: location)
    #   byebug
    #   expect(exhibition.location).to eq(gallery.locations.first)    
    # end

    # Should use factory girl for test data
    # FactoryGirl.define do
    #   factory :user do
    #    sequence(:name) { |n| "user #{n}" }
    #    sequence(:email) { |n| "sampleuser+#{n}@sampleuser.com" }
    #    password '123456789'
    #  end end

    #  expect{
    #   post :create, {user: FactoryGirl.attributes_for(:user)}
    # }.to change(User, :count).by(1)

end
