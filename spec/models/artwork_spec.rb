require 'rails_helper'

RSpec.describe Artwork, type: :model do

  it { should have_many(:media) }
  it { should have_many(:transactions) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:height_in) }
  it { should validate_presence_of(:width_in) }

  it 'should default commission to true' do
    artwork = Artwork.create(title: "Title", height_in: 12.00, width_in: 12.00)
    expect(artwork.commission).to eq(false)
  end

  it 'should return created_at date if date_started is nil' do
    artwork = Artwork.create(title: "Title", height_in: 12.00, width_in: 12.00)
    expect(artwork.date_started).to eq(artwork.created_at)
  end

end
