class CreateNextIdColumnOnTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :next_id, :integer
  end
end
