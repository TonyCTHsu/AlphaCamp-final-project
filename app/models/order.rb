class Order < ActiveRecord::Base
	validates_presence_of :delivery_date, :delivery_address, :family_type_id

	belongs_to :user
	belongs_to :family_type
	has_many :order_items, :dependent => :destroy
	accepts_nested_attributes_for :order_items, :allow_destroy => true, :reject_if => :all_blank
	has_many :products, :through => :order_items


end
