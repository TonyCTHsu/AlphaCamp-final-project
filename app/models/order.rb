class Order < ActiveRecord::Base
	belongs_to :user

	has_many :orderItems
	has_many :products, :through => :orderItems
end
