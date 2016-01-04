class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.string :family_type
    	t.string :delivery_address
    	t.date :delivery_date
    	t.integer :user_id
    	
      t.timestamps null: false
    end
  end
end
