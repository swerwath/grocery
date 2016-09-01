# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(Scott Chris Noah Sean).each do |name|
  u = User.create email:name+"@gmail.com", password:"password"
  u.save
end

%w(Flour Eggs Milk Cheese Avocado).each do |name|
  i = Item.create name:name, price:rand(15), requesterId:rand(3), buyerId:rand(3)
end
