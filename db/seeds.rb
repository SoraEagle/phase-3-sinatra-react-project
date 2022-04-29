puts "🌱 Seeding spices..."

# Seed your database here
trip = Trip.create(name: "Example Trip")

Item.create(name: "Example Item #1", trip_id: trip.id)
Item.create(name: "Example Item #2", trip_id: trip.id)

puts "✅ Done seeding!"