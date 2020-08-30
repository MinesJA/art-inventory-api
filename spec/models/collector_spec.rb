require 'rails_helper'

RSpec.describe Collector, type: :model do
  it { should have_many(:locations) }

  # it { should have_many(:artworks) } through transactions
  # through super class Actor
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end
