class CreateCollectors < ActiveRecord::Migration[5.2]
  def change
    create_table :collectors do |t|
      t.string :name
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
