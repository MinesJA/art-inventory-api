require 'rails_helper'

RSpec.describe Location, type: :model do
  
  # Associations
  it { should have_db_column(:addressable_id).of_type(:integer) }
  it { should have_db_column(:addressable_type).of_type(:string) }

  it { should belong_to(:addressable) }

  it { should have_many(:transactions) }

  # Validations
  it { should validate_presence_of(:address_1) }
  it { should validate_presence_of(:city) }

  it { should validate_presence_of(:state) }
  it { should allow_value("NY").for(:state) }
  it { should_not allow_value("NYYYY").for(:state) }
  
  it { should validate_presence_of(:zip) }
  it { should allow_value(12345).for(:zip) }
  it { should_not allow_value(1234).for(:zip) }
  
end
