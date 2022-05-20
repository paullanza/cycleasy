require "open-uri"

Bike.destroy_all
User.destroy_all
Booking.destroy_all
puts 'Deleted All Data'

user_one = User.create!(email: 'a@a.a', password: '123456')
file_one = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652994178/oe2rv3mmvvjd8yo2fgp7.jpg')
b_one = Bike.create!(brand: 'Peugeot', category: 'City', location: 'H1Y 1X5', price_per_day: 4, description: 'A great bike to explore the city! Not ideal for longer trips', user: user_one)
b_one.photo.attach(io: file_one, filename: 'bike1.png', content_type: 'image/png')
puts 'Created Bike!'

user_two = User.create!(email: 'b@b.b', password: '123456')
file_two = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652994160/g1efqk0tr523jjpxunc6.jpg')
b_two = Bike.create!(brand: 'Trek', category: 'Mountain', location: 'H4L 3M3', price_per_day: 3, description: 'Downhill ready, new shocks, disk brakes', user: user_two)
b_two.photo.attach(io: file_two, filename: 'bike2.png', content_type: 'image/png')
puts 'Created Bike!'

user_three = User.create!(email: 'c@c.c', password: '123456')
file_three = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652994003/xqkn498vqytnvy1zip6o.jpg')
b_three = Bike.create!(brand: 'Cannondale', category: 'City', location: 'H2W 2L3', price_per_day: 6, description: '21 gears, fine for uphill, or even a trek up the mountain!', user: user_three)
b_three.photo.attach(io: file_three, filename: 'bike3.png', content_type: 'image/png')
puts 'Created Bike!'

user_four = User.create!(email: 'd@d.d', password: '123456')
file_four = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993983/yvdh5qvav2i3ndnnbmmz.jpg')
b_four = Bike.create!(brand: 'Giant', category: 'Mountain', location: 'H2X 3P2', price_per_day: 5, description: 'Awesome bike for trails bro!', user: user_four)
b_four.photo.attach(io: file_four, filename: 'bike4.png', content_type: 'image/png')
puts 'Created Bike!'

user_five = User.create!(email: 'e@e.e', password: '123456')
file_five = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993967/nnuaeld1u3ybt3i4bopb.jpg')
b_five = Bike.create!(brand: 'GHOST', category: 'Mountain', location: 'H3G 1W9', price_per_day: 7, description: 'Gnarly bike built for speed on the hill, thick tires', user: user_five)
b_five.photo.attach(io: file_five, filename: 'bike5.png', content_type: 'image/png')
puts 'Created Bike!'

user_six = User.create!(email: 'f@f.f', password: '123456')
file_six = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993941/wksgimbms6edhuvdkuvj.jpg')
b_six = Bike.create!(brand: 'Electra', category: 'Speed', location: 'H4G 1L2', price_per_day: 5, description: 'Lightweight, 15 gears. Ready for distance, minmum 2 day rental.', user: user_six)
b_six.photo.attach(io: file_six, filename: 'bike6.png', content_type: 'image/png')
puts 'Created Bike!'

user_seven = User.create!(email: 'g@g.g', password: '123456')
file_seven = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993920/y4xz7fywlnsmd0tnqybh.jpg')
b_seven = Bike.create!(brand: 'Corsa', category: 'Speed', location: 'H4H 1K6', price_per_day: 3, description: 'Modern speed bike, great for extra long trips!', user: user_seven)
b_seven.photo.attach(io: file_seven, filename: 'bike7.png', content_type: 'image/png')
puts 'Created Bike!'

user_eight = User.create!(email: 'h@h.h', password: '123456')
file_eight = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993905/arha7c6yt7uzvmbm1bxv.jpg')
b_eight = Bike.create!(brand: 'Mongoose', category: 'BMX', location: 'H4E 3H6', price_per_day: 8, description: 'Pegs on both sides of both tires, small kink in frame, don\'t worry dude!.', user: user_eight)
b_eight.photo.attach(io: file_eight, filename: 'bike8.png', content_type: 'image/png')
puts 'Created Bike!'

user_nine = User.create!(email: 'i@i.i', password: '123456')
file_nine = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993883/wh4541noboyw7t7uptlk.jpg')
b_nine = Bike.create!(brand: 'Raleigh', category: 'Hybrid Bike', location: 'H2T 2N2', price_per_day: 3, description: 'Low cost hybrid bike. Not suited for off road.', user: user_nine)
b_nine.photo.attach(io: file_nine, filename: 'bike9.png', content_type: 'image/png')
puts 'Created Bike!'

user_ten = User.create!(email: 'j@j.j', password: '123456')
file_ten = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993862/uo0ddbgmf6lyzc5owisw.jpg')
b_ten = Bike.create!(brand: 'Whyte', category: 'City', location: 'H4P 2S8', price_per_day: 12, description: 'SUPER BIKE! GREAT FOR ALL USERS! HAS BOTTLE HOLDER!', user: user_ten)
b_ten.photo.attach(io: file_ten, filename: 'bike10.png', content_type: 'image/png')
puts 'Created Bike!'

Booking.create(user: user_two, bike: b_one, booking_start: Date.new(2022, 5, 17), booking_end: Date.new(2022, 5, 23), total_price: 24)
Booking.create(user: user_one, bike: b_three, booking_start: Date.new(2022, 6, 17), booking_end: Date.new(2022, 6, 23), total_price: 36)

puts 'Done!'
# 15.times do
#   User.create!(email: Faker::Internet.unique.email, password: 123456)
# end

# 20.times do
#   Bike.create!(brand: ['Raleigh', 'Shimano', 'Norco', 'Fiori', 'EcoVelo'].sample, category: ['Mountain', 'City', 'Street', 'BMX'].sample, location: Faker::Address.zip_code, price_per_day: rand(3..15), description: 'A great bike!', user: User.all.sample)
# end

# 12.times do
#   Booking.create(user: User.all.sample, bike: Bike.all.sample, booking_start: Faker::Date.between(from: '2022-05-19', to: '2022-06-19'), booking_end: Faker::Date.between(from: '2022-07-23', to: '2022-09-23'), total_price: rand(150..450))
# end
