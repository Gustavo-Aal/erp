# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

50.times do |n|

    params = {
        name: Faker::Vehicle.make_and_model,
        description: Faker::Lorem.sentence,
        quantity: Faker::Number.number(digits: 2),
        value: Faker::Number.decimal(l_digits: 6)
    }

    puts params

    car = Product.new params

    car.save
end

20.times do |n|
    products = []
    total_value = 0.0

    Faker::Number.within(range: 1..5).times do
        item = { 
            product: Product.all.sample,
            quantity: Faker::Number.within(range: 1..5)
        }
        products << item

        total_value += item[:product].value * item[:quantity]
    end


    order = Order.create(
        items_attributes: products,
        total_value: total_value
    )
end
