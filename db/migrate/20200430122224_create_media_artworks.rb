class CreateMediaArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :media_artworks do |t|
      t.references :medium, foreign_key: true
      t.references :artwork, foreign_key: true

      t.timestamps
    end
  end
end
