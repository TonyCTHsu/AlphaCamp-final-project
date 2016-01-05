class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :title

      t.timestamps null: false
    end
  end

 	add_column :products, :category_id, :integer
end
