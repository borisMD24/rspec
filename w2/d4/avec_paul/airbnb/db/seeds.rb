# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Begin destroy"

Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

puts "Destroy Finished"

5.times do |id_t|
    id_t = id_t + 1
    puts "Generating Data#{id_t}"
    City.create(id: id_t, city_name:"city#{id_t}"
end

5.times do |id_t|
    id_t = id_t + 1
    puts "Generating Data#{id_t}"
    Dogsitter.create(id: id_t, name: "sitter_first#{id_t}", city_id:  rand(1..5))
    Dog.create(id: id_t, name: "dog#{id_t}", city_id:  rand(1..5))
end



25.times do |id|
    Stroll.create(date: Time.now.to_datetime, dog_id: rand(1..5), dogsitter_id: rand(1..5))
    puts "Generating appointment #{id}"
end

puts "Generation complete"