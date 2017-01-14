# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Customer.destroy_all

company1 = Customer.create!(name: "Natural Nutrients")
company2 = Customer.create!(name: "The Om Dome Home")

cust_arr = []
40.times do
  cust_arr << Customer.create!(name: Faker::Company.name).id
end

Order.destroy_all

order1 = Order.create!(date: Faker::Date.backward(14), shipping_address: "1600 Pennsylvania Avenue", customer_id: company1.id)
order2 = Order.create!(date: Faker::Date.backward(14), shipping_address: "123 Fake Street", customer_id: company2.id)

ord_arr = []
100.times do
  ord_arr << Order.create!(date: Faker::Date.between(2.years.ago, Date.today), shipping_address: Faker::Address.street_address, customer_id: cust_arr.sample).id
end
