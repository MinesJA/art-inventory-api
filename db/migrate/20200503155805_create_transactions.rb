class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :artwork, foreign_key: true
      t.references :supplier, polymorphic: true
      t.references :recipient, polymorphic: true
      t.references :location, foreign_key: true
      t.references :transferable, polymorphic: true

      t.timestamps
    end
  end
end
