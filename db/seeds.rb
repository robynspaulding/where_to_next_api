# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Trip.create(user_id: 1, title: "test trip", image_url: "test_url", start_time: "2022-11-07", end_time: "2022-11-07")

Trip.create(user_id: 1, title: "second test title", image_url: "2nd_test_url", start_time: "2022-11-07", end_time:"2022-11-07")

Place.create(trip_id: 1, address: "test address", name: "test name", description: "test description but i think it needs to be long", image_url: "test.png", start_time: "2022-12-07", end_time:"2022-12-07")