# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FamilyType.delete_all
FamilyType.create!(:family_type => "幸福小倆口", :price => 700)
FamilyType.create!(:family_type => "全家草幸福", :price => 1180)

Product.delete_all
Product.create!(:name => "地瓜")