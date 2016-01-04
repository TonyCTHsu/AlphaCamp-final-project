class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	# t.string :email 
    	t.string :address
    	t.string :mobile_num
    	t.string :card_num
    	
      t.timestamps null: false
    end
  end
end
