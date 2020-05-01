require 'rails_helper'

RSpec.describe Location, type: :model do
  
  # Associations
  it { is_expected.to have_db_column(:addressable_id).of_type(:integer) }
  it { is_expected.to have_db_column(:addressable_type).of_type(:string) }

  it { is_expected.to belong_to(:addressable) }

  # Validations
  it { should validate_presence_of(:address_1) }
  it { should validate_presence_of(:city) }

  it { should validate_presence_of(:state) }
  it { should alow_value("NY").for(:state) }
  it { should not_alow_value("NYYYY").for(:state) }
  
  it { should validate_presence_of(:zip) }
  it { should allow_value(12345).for(:zip) }
  it { should not_allow_value(1234).for(:zip) }
  
end
