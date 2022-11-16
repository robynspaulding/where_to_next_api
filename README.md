# README

# Where To Next? 
Ruby on Rails API

Where To Next? is a travel planning app that allows a user to create a trip and add places they want to visit while they are on that trip. Within the trip show page -or rather where you can see the details of the trip and the places you want to go - there is a search bar that accesses a third-party API called <a href="https://serpapi.com/"> SerpApi </a> which scrapes Google results based on your search query and location input. 

# Technology used:
- <a href="https://github.com/robynspaulding/where_to_next_api">Ruby on Rails backend - This Repo!</a>
- <a href="https://github.com/robynspaulding/where_to_next_react_frontend">React.js frontend</a>
- <a href="https://www.npmjs.com/package/react-datetime-picker">React DateTime Picker</a>
- <a href="https://github.com/marnusw/date-fns-tz">Date-fns-tz</a>



## Installation

```bash
git clone https://github.com/robynspaulding/where_to_next_api.git
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `requests.http` file.

## Roadmap

While this is currently a basic, user input only trip planner my goal is to create another backend api to act as a third party api which will house a database of Scuba Diving sites including the name and description of the site, a list of common sea life and topography, longitude and latitude and how it’s accessed either by boat or from the shore. My plan is to begin with California dive sites and add locations to the database over time.

