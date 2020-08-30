class ChangeCommissionDefaultFalse < ActiveRecord::Migration[5.2]
  def up
    change_column_default(:artworks, :commission, false)
   end
   
   def down
    change_column_default(:artworks, :commission, nil)
   end
end
