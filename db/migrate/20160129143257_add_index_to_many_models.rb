class AddIndexToManyModels < ActiveRecord::Migration
  def change
  
  add_index :order_items, :product_id
  add_index :order_items, :order_id
  add_index :order_items, :status

  add_index :orders, :delivery_date
	add_index :orders, :delivery_address
	add_index :orders, :user_id

  add_index :products, :name
  
  add_index :users, :name
  end
end
