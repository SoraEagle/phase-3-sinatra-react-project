require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get '/trips' do # List all trips
    trips = Trip.all
    trips.to_json
  end

  get '/trips/:id' do # List the specified trip and its items
    trips = Trip.find(params[:id])
    trips.to_json(include: :items)
  end

  get '/items' do # List all items
    items = Item.all
    items.to_json
  end

  post '/trips' do # Create a trip
    trip = Trip.create(
      name: params[:name]
    ) # Add named parameters for text fields
    trip.to_json
  end

  post '/items' do # Create a item
    item = Item.create(
      name: params[:name],
      trip_id: params[:trip_id]
    ) # Add named parameters for text fields
    item.to_json
  end

  patch '/items/:id' do # Update specific item's info
    items = Item.find(param[:id])
    items.update(name: params[:name])
    items.to_json
  end

  delete '/trips/:id' do # Deletes the corresponding trip
    trip = Trip.find(params[:id])
    trip.destroy
    trip.to_json
  end
end

# binding.pry

# Add items page?