require 'rails_helper'

RSpec.describe Artist, type: :model do

  it { should have_many(:locations) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  # it can create a painting which should generate a transaction for that creation

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

end
