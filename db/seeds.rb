# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({first_name: 'David', last_name: 'Fellows', phone_number: "3016462430", birthdate: "8/21/89", email: "dfellows11@gmail.com" })
user2 = User.create({first_name: 'Angela', last_name: 'Ryu', phone_number: "2012439921", birthdate: "12/11/92", email: "anguster91@gmail.com" })


restaurant1 = Restaurant.create({name: "Roti", address: "1311 F St NW, Washington, DC 20004", category: "Mediterranean", phone_number: "2028717329", website_url: "roti.com", hours_of_operation: "9-5"})
restaurant2 = Restaurant.create({name: "Potbellys", address: "709 H St NW, Washington, DC 20001", category: "Mediterranean", phone_number: "(202) 375-7893", website_url: "roti.com", hours_of_operation: "9-5"})


