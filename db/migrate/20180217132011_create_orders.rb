class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :product_id_integer
      t.float :total
    end
    add_index :orders, :user_id
    add_index :orders, :product_id_integer
  end
end
