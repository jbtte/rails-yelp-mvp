puts "Destroying Restaurant Records"
Restaurant.destroy_all
puts "All gone"
puts "Now let's create a new one"

10.times do
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  new_restaurant.save
end

puts "All done!"
