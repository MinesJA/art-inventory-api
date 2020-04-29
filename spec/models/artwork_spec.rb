require 'rails_helper'

RSpec.describe Artwork, type: :model do
  it { should belong_to(:artist) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:commission) }
  it { should validate_presence_of(:date_started) }
  it { should validate_presence_of(:height_in) }
  it { should validate_presence_of(:width_in) }

end
