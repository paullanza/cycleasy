require "open-uri"

Bike.destroy_all
User.destroy_all
Booking.destroy_all

user_one = User.create!(email: 'a@a.a', password: '123456')
file_one = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652994178/oe2rv3mmvvjd8yo2fgp7.jpg')
b_one = Bike.create!(brand: 'Peugeot', category: 'city bike', location: 'laval', price_per_day: 4, description: 'good bike to get around Laval', user: user_one)
b_one.photo.attach(io: file_one, filename: 'bike1.png', content_type: 'image/png')

user_two = User.create!(email: 'b@b.b', password: '123456')
file_two = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652994160/g1efqk0tr523jjpxunc6.jpg')
b_two = Bike.create!(brand: 'Trek', category: 'city bike', location: 'Paris', price_per_day: 3, description: 'good bike to get around Paris', user: user_two)
b_two.photo.attach(io: file_two, filename: 'bike2.png', content_type: 'image/png')

user_three = User.create!(email: 'c@c.c', password: '123456')
file_three = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652994003/xqkn498vqytnvy1zip6o.jpg')
b_three = Bike.create!(brand: 'Cannondale', category: 'Mountain bike', location: 'Montreal', price_per_day: 6, description: 'good bike to go mountainbiking', user: user_three)
b_three.photo.attach(io: file_three, filename: 'bike3.png', content_type: 'image/png')

user_four = User.create!(email: 'd@d.d', password: '123456')
file_four = URI.open('https://res.cloudinary.com/cycleasy/image/upload/v1652993983/yvdh5qvav2i3ndnnbmmz.jpg')
b_four = Bike.create!(brand: 'Giant', category: 'Mountain bike', location: 'Barcelona', price_per_day: 5, description: 'good bike to go mountainbiking', user: user_four)
b_four.photo.attach(io: file_four, filename: 'bike4.png', content_type: 'image/png')



Booking.create(user: user_two, bike: b_one, booking_start: Date.new(2022, 5, 17), booking_end: Date.new(2022, 5, 23), total_price: 140)
Booking.create(user: user_three, bike: b_two, booking_start: Date.new(2022, 6, 17), booking_end: Date.new(2022, 6, 23), total_price: 210)
Booking.create(user: user_four, bike: b_three, booking_start: Date.new(2022, 7, 17), booking_end: Date.new(2022, 7, 23), total_price: 420)
Booking.create(user: user_one, bike: b_four, booking_start: Date.new(2022, 8, 17), booking_end: Date.new(2022, 8, 23), total_price: 350)

# 15.times do
#   User.create!(email: Faker::Internet.unique.email, password: 123456)
# end

# 20.times do
#   Bike.create!(brand: ['Raleigh', 'Shimano', 'Norco', 'Fiori', 'EcoVelo'].sample, category: ['Mountain', 'City', 'Street', 'BMX'].sample, location: Faker::Address.zip_code, price_per_day: rand(3..15), description: 'A great bike!', user: User.all.sample)
# end

# 12.times do
#   Booking.create(user: User.all.sample, bike: Bike.all.sample, booking_start: Faker::Date.between(from: '2022-05-19', to: '2022-06-19'), booking_end: Faker::Date.between(from: '2022-07-23', to: '2022-09-23'), total_price: rand(150..450))
# end
