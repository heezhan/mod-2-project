# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Restaurant.destroy_all
Review.destroy_all
Reservation.destroy_all
Location.destroy_all

dupontcircle = Location.create(region: "Dupont Circle")

david = User.create({first_name: "David", last_name: "Fellows", phone_number: "3016462430", birthdate: "8/21/89", email: "dfellows11@gmail.com", username: "davidfellows", password: "2222", password_confirmation: "2222"})
angela = User.create({first_name: "Angela", last_name: "Ryu", phone_number: "2012439921", birthdate: "12/11/92", email: "anguster91@gmail.com", username: "angelaryu", password: "3333", password_confirmation: "3333"})
heejae = User.create({first_name: "Heejae", last_name: "Han", phone_number: "5715814282", birthdate: "11/18/94", email: "hhan1194@gmail.com", username: "hhan1194", password: "1111", password_confirmation: "1111"})

roti = Restaurant.create({name: "Roti", address: "1311 F St NW, Washington, DC 20004", price: "$", category: "Mediterranean", phone_number: "2028717329", website_url: "roti.com", hours_of_operation: "9-5", location_id: dupontcircle})
potbelly = Restaurant.create({name: "Potbellys", address: "709 H St NW, Washington, DC 20001", price: "$", category: "Fast Food", phone_number: "2023757893", website_url: "potbelly.com", hours_of_operation: "7-7:30", location_id: dupontcircle})

review1 = Review.create(content: "A nice place to grab a quick lunch", stars: 4, user: david, restaurant: potbelly)
review2 = Review.create(content: "Good food", stars: 3, user: angela, restaurant: roti)
review3 = Review.create(content: "Decent place", stars: 4, user: heejae, restaurant: roti)

reservation1 = Reservation.create(date: "10/25/19", time: "11", guests: 3, restaurant: roti, user: david)
reservation2 = Reservation.create(date: "11/18/19", time: "1", guests: 5, restaurant: potbelly, user: heejae)

