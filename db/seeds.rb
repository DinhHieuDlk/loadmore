# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: 'dinhhieu1992@gmail.com', password: 'dinhhieu', password_confirmation: 'dinhhieu', user_name: 'Dinh_Hieu' ,admin: 'true')

50.times do 
	Post.create!(title:Faker::Lorem.word,
		content:Faker::Lorem.paragraphs,
		user_id:'1')
end