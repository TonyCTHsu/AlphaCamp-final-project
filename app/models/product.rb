class Product < ActiveRecord::Base
	validates_presence_of :name ,:category

	has_many :order_items 
	has_many :orders, :through => :order_items

	belongs_to :category
end
