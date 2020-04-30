require 'rails_helper'

RSpec.describe Gallery, type: :model do
  it { should have_many(:locations) }
  it { should have_many(:exhibitions) }
  
  it { should validate_presence_of(:name) }
  

  it 'should have at least one location associated with it' do
    expect { Gallery.create(name: "Gallery 1") }.to raise_error
  end

  # Exhibition that is created in association with gallery should have that galleries address
end
