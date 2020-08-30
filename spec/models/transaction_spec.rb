require 'rails_helper'

RSpec.describe Transaction, type: :model do
   # Associations
   
   it { should belong_to(:artwork) }
   it { should belong_to(:recipient) }
   it { should belong_to(:supplier) }
   it { should belong_to(:location) }
   it { should have_db_column(:transferable_id).of_type(:integer) }
   it { should have_db_column(:transferable_type).of_type(:string) }
   
   it { should have_one(:next) }
   # it { should belong_to(:next) }
   it { should have_one(:prev) }
   # it { should belong_to(:prev) }
 
   
end
