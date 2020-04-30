require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to have_db_column(:addressable_id).of_type(:integer) }
  it { is_expected.to have_db_column(:addressable_type).of_type(:string) }

  it { is_expected.to belong_to(:addressable) }

  it { should validate_presence_of(:address_1) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip) }
end
