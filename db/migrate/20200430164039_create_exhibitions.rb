class CreateExhibitions < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibitions do |t|
      t.string :name
      t.datetime :opening
      t.datetime :closing
      t.references :organizer, polymorphic: true

      t.timestamps
    end
  end
end
