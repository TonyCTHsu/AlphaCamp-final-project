class AddSpiceAndRiceToOrders < ActiveRecord::Migration
  def change
  end
  add_column :orders, :spice, :boolean
  add_column :orders, :rice, :boolean
end
