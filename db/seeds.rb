

user_one = User.create(email: 'b@b.b', password: '123456')
user_two = User.create(email: 'c@c.c', password: '123456')
user_three = User.create(email: 'd@d.d', password: '123456')
user_four = User.create(email: 'e@e.e', password: '123456')

Bike.create(brand: 'peugeot', category: 'city bike', location: 'laval', price_per_day: 20, description: 'good bike to get around Laval', user: user_one)
Bike.create(brand: 'Rally', category: 'city bike', location: 'Paris', price_per_day: 30, description: 'good bike to get around Paris', user: user_two)
Bike.create(brand: 'Rally', category: 'Mountain bike', location: 'Montreal', price_per_day: 60, description: 'good bike to go mountainbiking', user: user_three)
