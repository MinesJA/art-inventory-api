require 'rails_helper'

RSpec.describe Exhibition, type: :model do
  it { should have_one(:location) }

  it { should have_db_column(:venuable_id).of_type(:integer) }
  it { should have_db_column(:venuable_type).of_type(:string) }

  it { should belong_to(:venuable) }
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:opening) }
  it { should validate_presence_of(:closing) }

  # Exhibition that is created in association with gallery should have that galleries address
  it 'should give gallery location if no location provided and associated with gallery' do
    gallery = Gallery.create(name: "Gallery 1")
    location = gallery.locations.create(address_1: "Address 1", city: "City", state: "NY", zip: 11221)
    exhibition = gallery.exhibitions.create(name: "Exhibition 1", opening: DateTime.now, closing: DateTime.now + 10.days)

    expect(exhibition.location).to eq(location)    
  end
end
