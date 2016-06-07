# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
	user = User.find_or_create_by!(
		email: "user#{i}@example.com",
		name: "Jack Smith #{i}'th"
	) do |u|
		u.password = 'qweqwe1'
		u.password_confirmation = 'qweqwe1'
	end

	20.times do |j|
		user.tasks.create!(content: Faker::Lorem.sentence)
	end
end