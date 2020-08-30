class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.boolean :commission
      t.datetime :date_sold
      t.datetime :date_started
      t.datetime :date_completed
      t.decimal :height_in
      t.decimal :width_in
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
