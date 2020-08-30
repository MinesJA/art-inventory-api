require 'rails_helper'

RSpec.describe Medium, type: :model do
  it { should have_many(:artworks)}

  it { should validate_presence_of(:name) }
end
