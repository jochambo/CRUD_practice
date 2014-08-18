require 'faker'

counter = 1
password = Faker::Internet.password(8,8)

5.times do
  Truck.create(name: Faker::App.name,
               location: rand(1..10),
               owner_id: counter,
               driver_id: rand(1..10))
  counter += 1
end

10.times do
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              email: Faker::Internet.safe_email,
              password: password,
              password_confirmation: password)
end

20.times do
  Plate.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph, truck_id: rand(1..5), price: Faker::Commerce.price)
end

