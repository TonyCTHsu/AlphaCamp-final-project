class OrderItem < ActiveRecord::Base
	# validates_presence_of :product_id, :order_id, :status

	belongs_to :product
	belongs_to :order
end
