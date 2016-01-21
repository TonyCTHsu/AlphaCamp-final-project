class FamilyType < ActiveRecord::Base
	
	has_many :orders

	validates_presence_of :family_type, :price

end
