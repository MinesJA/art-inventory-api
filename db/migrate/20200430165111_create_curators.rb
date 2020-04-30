class CreateCurators < ActiveRecord::Migration[5.2]
  def change
    create_table :curators do |t|
      t.string :name
      t.string :site

      t.timestamps
    end
  end
end
