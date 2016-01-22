class OrderItem < ActiveRecord::Base
	
	belongs_to :product
	belongs_to :order

	validates_presence_of :product, :order, :status
	def product_name
		self.product.name
	end
end
