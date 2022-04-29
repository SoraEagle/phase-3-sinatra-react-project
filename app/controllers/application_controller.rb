class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/trips' do # List all trips
    trips = Trip.all
    trips.to_json
  end

  get '/trips/:id' do # List the specified trip and its items
    trip = Trip.find(params[:id])
    items = trip.items.all # All of that trip's items
    trip.to_json(include: items)
  end

  # post '/trips' do
  #   trip = Trip.create()
  #   trip.to_json
  # end

  patch '/trips/item/:id' do # Update specific item's info
    items = Item.find(param[:id])
    items.update(name: params[:name])
    items.to_json
  end

  delete '/item/:id' do # Deletes the corresponding item
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end
end

# Add items page?
# Make "/trips/:id" display items for that trip...