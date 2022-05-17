Bike.destroy_all
User.destroy_all
Booking.destroy_all

user_one = User.create!(email: 'b@b.b', password: '123456')
user_two = User.create!(email: 'c@c.c', password: '123456')
user_three = User.create!(email: 'd@d.d', password: '123456')
user_four = User.create!(email: 'e@e.e', password: '123456')

b_one = Bike.create!(brand: 'peugeot', category: 'city bike', location: 'laval', price_per_day: 20, description: 'good bike to get around Laval', user: user_one)
b_two = Bike.create!(brand: 'Rally', category: 'city bike', location: 'Paris', price_per_day: 30, description: 'good bike to get around Paris', user: user_two)
b_three = Bike.create!(brand: 'Rally', category: 'Mountain bike', location: 'Montreal', price_per_day: 60, description: 'good bike to go mountainbiking', user: user_three)
b_four = Bike.create!(brand: 'Rally', category: 'Mountain bike', location: 'Montreal', price_per_day: 60, description: 'good bike to go mountainbiking', user: user_four)

Booking.create(user: user_one, bike: b_one, booking_start: Date.new(2022, 5, 17), booking_end: Date.new(2022, 5, 23), total_price: 100)
Booking.create(user: user_two, bike: b_two, booking_start: Date.new(2022, 6, 17), booking_end: Date.new(2022, 6, 23), total_price: 200)
Booking.create(user: user_three, bike: b_three, booking_start: Date.new(2022, 7, 17), booking_end: Date.new(2022, 7, 23), total_price: 120)
Booking.create(user: user_four, bike: b_four, booking_start: Date.new(2022, 8, 17), booking_end: Date.new(2022, 8, 23), total_price: 150)
