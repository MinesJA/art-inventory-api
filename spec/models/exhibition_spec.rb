require 'rails_helper'

RSpec.describe Exhibition, type: :model do
  it { should have_one(:location) }

  it { should have_db_column(:organizer_id).of_type(:integer) }
  it { should have_db_column(:organizer_type).of_type(:string) }

  it { should belong_to(:organizer) }
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:opening) }
  it { should validate_presence_of(:closing) }

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
