class CreateFamilyTypes < ActiveRecord::Migration
  def change
    create_table :family_types do |t|
    	t.string  :family_type, null: false
    	t.integer :price, null: false
      t.timestamps null: false
    end
  end

  remove_column :orders, :family_type
  add_column :orders, :family_type_id, :integer



end
