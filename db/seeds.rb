puts "🌱 Seeding spices..."

# Seed your database here
trip = Trip.create(name: "Example Trip")

item = Item.create(name: "Example Item #1", trip_id: trip.id)
item = Item.create(name: "Example Item #2", trip_id: trip.id)

trip = Trip.create(name: "2nd Example Trip")

item = Item.create(name: "Example Item #3", trip_id: trip.id)

puts "✅ Done seeding!"