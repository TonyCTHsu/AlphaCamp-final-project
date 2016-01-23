# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
array_cata =["根莖類", "瓜果類", "葉菜類"]
 array1 = ["地瓜"]
 # array1 = ["地瓜","芋頭","甜菜根","紅白蘿蔔","馬玲薯","大頭菜"]
 # array2 = ["小黃瓜", "大黃瓜", "絲瓜", "南瓜", "瓠瓜", "四季豆", "甜豆", "茄子", "彩椒", "青椒", "青白花", "椰菜", "花生"]
 # array3 = ["大小白菜","萵苣","茼蒿","高麗菜","青江菜","豆苗","小松菜","黑葉白","菊苣","韭菜","包心菜","白娃娃菜","芥菜","空心菜","芥藍菜","天津","白菜","地瓜葉"]

User.delete_all
FamilyType.delete_all
Product.delete_all
Category.delete_all
OrderItem.delete_all

FamilyType.create!(:family_type => "幸福小倆口", :price => 700)
FamilyType.create!(:family_type => "全家草幸福", :price => 1180)

User.create!(:name =>"Tony Hsu", :email => "tonyc.t.hsu@gmail.com", :password =>"12345678", 
						 :password_confirmation => "12345678", :role =>"admin")

array_cata.each do |c|
	Category.create!(:title => c)
end

array1.each do |o|
	Product.create!(:name => o, :category => Category.last)

end

# array2.each do |o|
# 	Product.create!(:name => o, :category_id => Category.find_by_title("瓜果類"))
# end

# array3.each do |o|
# 	Product.create!(:name => o, :category_id => Category.find_by_title("葉菜類"))
# end

# 根莖類:地瓜, 芋頭、甜菜根、紅白蘿蔔、馬玲薯、大頭菜

# 瓜果類:小黃瓜、大黃瓜、絲瓜、南瓜、瓠瓜、四季豆、甜豆、茄子、彩椒、青椒、青白花、椰菜、花生

# 葉菜類:大小白菜、萵苣、茼蒿、高麗菜、青江菜、豆苗、小松菜、黑葉白、菊苣、韭菜、包心、白娃娃菜、芥菜、空心菜、芥藍菜、天津、白菜、地瓜葉
