# Phase 3 Project

## Description
This is the backend repository of the Phas 3 Project.  Here, all of the data for the Trip and Item objects is stored.

This backend uses Ruby and Sinatra to create the routes that display this data.

## Visuals
A video demonstration of this application:
<!-- Link to the YouTube video here -->

## Installation
To install this **entire** application, you will need to **fork and clone** these two repositories:

[Backend Repository](https://github.com/SoraEagle/phase-3-sinatra-react-project)

[Frontend Repository](https://github.com/SoraEagle/phase-3-sinatra-react-frontend)

Afterwards, make sure to use `bundle install` to install the gems.

## Usage
### Run Backend server
You can start your server with
```
bundle exec rake server
```

This will run your server on port [http://localhost:9292](http://localhost:9292).

### Run Frontend server
**NOTICE**: Before running the frontend server for the first time, make sure to first run
```
npm install
```

You can start the frontend server with 
```
npm start
```

This will run the server on [this port](http://localhost:3000/).

Links to the JSON data:

[Trips](http://localhost:9292/trips)

[Items](http://localhost:9292/items)

You can add a "/:id" to the end (the :id represents the ID number) in order to view the related info on an single Trip/Item.

Example: http://localhost:9292/trips/1

Which displays **only** the information of the Trip with an ID of 1, and it's Items.

## Roadmap
I currently have no plans to update this application...

## Contributing
Pull requests are welcome.  However, if you decide to make major edits, **do not claim this as your own work!**
Always reference the original work [here](https://github.com/SoraEagle/phase-3-sinatra-react-project)

## Licenses
No licenses