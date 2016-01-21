class Order < ActiveRecord::Base

	belongs_to :user
	belongs_to :family_type
	has_many :order_items, :dependent => :destroy, inverse_of: :order
	has_many :products, :through => :order_items
	
	accepts_nested_attributes_for :order_items, :allow_destroy => true, :reject_if => :all_blank
	validates_presence_of :delivery_date, :delivery_address, :family_type_id
	validates_inclusion_of :spice, :rice,  :in => [true, false]

	def number
		id.to_s.rjust(10,"0")
	end
end
