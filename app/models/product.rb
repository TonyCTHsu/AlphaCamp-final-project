class Product < ActiveRecord::Base
	has_many :orderItems 
	has_many :orders, :through => :orderItems
end
