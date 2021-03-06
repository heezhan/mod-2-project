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

wh = Location.create(region: "White House")

david = User.create(first_name: "David", last_name: "Fellows", phone_number: "3016462430", birthdate: "8/21/89", email: "dfellows11@gmail.com", username: "davidfellows", password: "2222", password_confirmation: "2222")
angela = User.create(first_name: "Angela", last_name: "Ryu", phone_number: "2012439921", birthdate: "12/11/92", email: "anguster91@gmail.com", username: "angelaryu", password: "3333", password_confirmation: "3333")
heejae = User.create(first_name: "Heejae", last_name: "Han", phone_number: "5715814282", birthdate: "11/18/94", email: "hhan1194@gmail.com", username: "hhan1194", password: "1111", password_confirmation: "1111")

roti = Restaurant.create(name: "Roti", address: "1311 F St NW, Washington, DC 20004", price: "$", category: "Mediterranean", phone_number: "2028717329", website_url: "roti.com", hours_of_operation: "10:30am - 9:00pm", location: wh, img_url: "https://images.unsplash.com/photo-1501112525013-8f623674ceef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1639&q=80")
potbelly = Restaurant.create(name: "Potbelly", address: "718 14th St NW, Washington, DC 20005", price: "$", category: "Fast Food", phone_number: "2026289500", website_url: "potbelly.com", hours_of_operation: "10:00am - 7:00pm", location: wh, img_url: "https://images.unsplash.com/photo-1550507992-eb63ffee0847?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80")
mxdc = Restaurant.create(name: "MXDC", address: "600 14th St NW, Washington, DC 20005", price: "$$", category: "Mexican", phone_number: "2023931900", website_url: "mxdcrestaurant.com", hours_of_operation: "11:30am - 11:00pm", location: wh, img_url: "https://images.unsplash.com/photo-1566740932818-cacfb780ae18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
astro = Restaurant.create(name: "Astro Doughnuts", address: "1308 G St NW
Washington, DC 20005", price: "$", category: "Fast Food", phone_number: "2028095565", website_url: "astrodoughnuts.com", hours_of_operation: "7:30am - 5:30pm", location: wh, img_url: "https://images.unsplash.com/photo-1527904324834-3bda86da6771?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1893&q=80")
# proper21 = Restaurant.create(name: "Proper 21", address: "1319 F St NW
# Washington, DC 20004", price: "$$", category: "American", phone_number: "2028095565", website_url: "proper21.com", hours_of_operation: "11:30am - 3:00pm", location: wh, img_url: "https://images.unsplash.com/photo-1426869981800-95ebf51ce900?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")

review1 = Review.create(content: "A nice place to grab a quick lunch", stars: 4, user: david, restaurant: potbelly)
review2 = Review.create(content: "Good food", stars: 3, user: angela, restaurant: roti)
review3 = Review.create(content: "Decent place", stars: 4, user: heejae, restaurant: roti)
review3 = Review.create(content: "Can't remember what I didn't like", stars: 1, user: heejae, restaurant: mxdc)
review3 = Review.create(content: "I think about it every day", stars: 5, user: david, restaurant: astro)

reservation1 = Reservation.create(date: "10/25/19", time: "11:00am", guests: 3, restaurant: roti, user: david)
reservation2 = Reservation.create(date: "11/18/19", time: "1:00pm", guests: 5, restaurant: potbelly, user: heejae)

