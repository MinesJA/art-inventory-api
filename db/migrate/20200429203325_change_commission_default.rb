class ChangeCommissionDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:artworks, :commission, true)
  end
end
