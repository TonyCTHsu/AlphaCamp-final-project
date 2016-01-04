class Order < ActiveRecord::Base
	has_many :orderItems
	has_many :products, :through => :orderItems
end
