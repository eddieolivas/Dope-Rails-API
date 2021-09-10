# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  {
    name: "Quiet Comfort",
    brand: "Bose",
    price: "$279.99",
    description: "Wireless Bluetooth Headphones, Noise-Cancelling, with Alex voice control - Black"
  },
  {
    name: "Playstation 4",
    brand: "Sony",
    price: "$379.99",
    description: "An awesome gaming console."
  },
  {
    name: "Macbook Pro",
    brand: "Apple",
    price: "$2000",
    description: "A bad ass laptop."
  },
  {
    name: "Quadcopter Mini Drone",
    brand: "Crazepony",
    price: "$88.99",
    description: "Wireless Bluetooth Headphones, Noise-Cancelling, with Alex voice control - Black"
  }
])