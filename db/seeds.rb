# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: :merchant)
Role.create(name: :client)
user1 = User.create(username: 'Nicole',
                    email: 'admin@gmail.com',
                    password: 'password1234',
                    password_confirmation: 'password1234')
user1.add_role(:merchant)
user2 = User.create(username: 'Bruce',
                    email: 'client@gmail.com',
                    password: 'password1234',
                    password_confirmation: 'password1234')
user2.add_role(:client)
1.upto(5) do |i|
  Product.create(title: "monitor #{i}",
                 description: "good peopele monitor #{i}",
                 image: "monitor #{i}",
                 price: 600 * i,
                 user: user1)
end
1.upto(5) do |i|
  Product.create(title: "keyboard #{i}",
                 description: "good peopele keyboard #{i}",
                 image: "keboard #{i}",
                 price: 200 * i,
                 user: user2)
end