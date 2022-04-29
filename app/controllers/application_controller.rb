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

  # Add get, post, patch, and delete routes here:
  get '/trips/:id' do # List the trip and its items
    trip = Trip.find(params[:id])
    items = trip.items.all # All of that trip's items
    trip.to_json
    items.to_json
  end

  # post '/trips' do
  #   trip = Trip.create()
  #   trip.to_json
  # end

  patch '/item/:id' do
  end

  delete '/item/:id' do # Deletes the corresponding item
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end
end

# Add items page?
# Make "/trips/:id" display items for that trip...