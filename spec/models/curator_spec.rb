require 'rails_helper'

RSpec.describe Curator, type: :model do
  it { should have_many(:exhibitions)}

  # it { should have_many(:artworks) } through transactions
  # through super class Actor

  it { should validate_presence_of(:name) }
end
