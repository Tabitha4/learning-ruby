class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :user_id
      t.string :product_id
      t.float :total
    end
    add_index :orders, :user_id
    add_index :orders, :product_id
  end
end
