puts "🌱 Seeding spices..."

# Seed your database here
trip = Trip.create(name: "Example Trip")

Item.create(name: "Example Item", trip_id: trip.id)

puts "✅ Done seeding!"