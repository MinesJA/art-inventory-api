require 'rails_helper'

RSpec.describe Curator, type: :model do
  it { should have_many(:exhibitions)}

  it { should validate_presence_of(:name) }
end
