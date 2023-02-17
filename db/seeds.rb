# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  name: "Mary Smith",
  email: "mary@test.com",
  password: "password",
  password_confirmation: "password",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhROJ2w8t0yHJcaAQRgvkbuceFyxv8EKiMuQ&usqp=CAU"
)

User.create(
  name: "Bob Adams",
  email: "bob@test.com",
  password: "password",
  password_confirmation: "password",
  image_url: "https://image.shutterstock.com/image-vector/hiking-tourist-man-large-backpack-260nw-644078815.jpg"
)

User.create(
  name: "Sam Sereno",
  email: "sam@test.com",
  password: "password",
  password_confirmation: "password",
  image_url: "https://image.shutterstock.com/image-vector/young-caucasian-white-woman-diving-260nw-1064275712.jpg"
)

Trip.create(
  user_id: 1, 
  title: "Fiji Scuba Diving Trip", 
  image_url: "https://www.scuba.com/blog/wp-content/uploads/2011/03/Map-Fiji-copy.jpg", 
  start_time: "2023-02-21", 
  end_time: "2023-02-25"
)

Trip.create(
  user_id: 2, 
  title: "Niagara Falls Trip", 
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkbP1PQYJS8eYy1rlMIXDyUr8BH4ItMt9CWm1DfOr6Rg&s", 
  start_time: "2023-04-02", 
  end_time: "2023-04-05"
)

Trip.create(
  user_id: 3, 
  title: "New Years in Yosemite", 
  image_url: "https://images.unsplash.com/photo-1562310503-a918c4c61e38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8eW9zZW1pdGUlMjBuYXRpb25hbCUyMHBhcmt8ZW58MHx8MHx8&w=1000&q=80", 
  start_time: "2022-12-29", 
  end_time: "2023-01-02"
)

Place.create(
  trip_id: 1, 
  address: "Box 112 Deuba, Beqa, Fiji", 
  name: "Beqa Lagoon Resort", 
  description: "Surrounded by rainforest and tropical gardens, and accessible only by boat, this all-inclusive retreat is set on a secluded island with no towns or roads.", 
  image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hideawayholidays.com.au%2Ffiji-beqa-lagoon-resort%2F&psig=AOvVaw3sg6Tq5m2OcbreLt4kISnz&ust=1667944722242000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCNjP3ruInfsCFQAAAAAdAAAAABAD", 
  start_time: "2023-02-21", 
  end_time:"2023-02-25"
)

Place.create(
  trip_id: 1, 
  address: "Pacific Harbour, Fiji", 
  name: "Fiji Snorkeling Tour in Beqa Lagoon", 
  description: "This tour is perfect for those who want to discover the incredible underwater world near Fiji. You’ll save time researching where the best places to snorkel are, and instead travel with experienced professionals to a spot known for its great marine life—Beqa Lagoon. You won’t have to bring your own kit as fins, masks, and snorkels are included, making it the ultimate carefree tour. Travel light—snorkeling equipment provided Get insider knowledge on the best places to snorkel in Fiji Feel safe snorkeling with a guide to accompany you Get access to Beqa Lagoon—known for its great snorkeling", 
  image_url: "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/7b/17/a5.jpg", 
  start_time: "2023-02-22", 
  end_time:"2023-02-22"
)

Place.create(
  trip_id: 1, 
  address: "Beqa lagoon", 
  name: "Beqa’s Cathedral Dive", 
  description: "World famous, this protected marine reserve is home to the Tiger Shark, Bull Shark, Black Tip, Nurse and Lemon sharks and a huge variety of tropical fish.", 
  image_url: "https://www.diveoclock.com/destinations/Oceania/Fiji/Beqa_sharks/fiji-beqa-sharks-50.jpg", 
  start_time: "2023-02-22", 
  end_time:"2023-02-22"
)

Place.create(
  trip_id: 1, 
  address: "Beqa Lagoon", 
  name: "FANTASEA", 
  description: "Colours, soft coral and lots of Gorgenian Fans in different shapes, sizes and colours.", 
  image_url: "https://scubadiverlife.com/wp-content/uploads/2018/12/Featured.jpg", 
  start_time: "2023-02-23", 
  end_time:"2023-02-23"
)

Place.create(
  trip_id: 2, 
  address: "7001 Buffalo Ave, Niagara Falls, NY 14304-4001, United States of America", 
  name: "Niagara Riverside Resort", 
  description: "This hotel, in a high-rise building overlooking the Niagara River, features a year-round indoor pool and fitness center. The Falls are 3.7 mi away. Free WiFi is offered.", 
  image_url: "https://www.niagarafallsstatepark.com/~/media/parks/niagara-falls/homepage/banner-niagara1.jpg", 
  start_time: "2023-04-02", 
  end_time:"2023-04-05"
)

Place.create(
  trip_id: 2, 
  address: "701 Whirlpool St, Niagara Falls, NY 14301", 
  name: "Aquarium of Niagara", 
  description: "The Aquarium of Niagara is a non-profit public aquarium dedicated to education and conservation of aquatic life. Originally privately owned and founded by a group of chemists and other scientists, it opened on June 12, 1965. Wikipedia", 
  image_url: "https://www.niagarafallsreporter.com/Stories/2015/MAR03/images/!cid_image005_gif@01D055C8.gif", 
  start_time: "2023-04-03", 
  end_time:"2023-04-03"
)

Place.create(
  trip_id: 2, 
  address: "Rainbow Bridge, 5702 Falls Ave, Niagara Falls, ON", 
  name: "Rainbow Bridge", 
  description: "The Niagara Falls International Rainbow Bridge, commonly known as the Rainbow Bridge, is an arch bridge across the Niagara River gorge. It connects the cities of Niagara Falls, New York, United States, and Niagara Falls, Ontario, Canada. Wikipedia", 
  image_url: "https://www.niagarafallslive.com/wp-content/uploads/rainbow-bridge-aerial-2022-1325X800-250K.jpg", 
  start_time: "2023-04-04", 
  end_time:"2023-04-04"
)

Place.create(
  trip_id: 3, 
  address: "Vernal Fall, Yosemite Valley, CA, United States", 
  name: "Vernal Fall", 
  description: "Vernal Fall stands at 317 ft (96 m) tall and is among the most powerful waterfalls in Yosemite. Unlike Yosemite Fall or Bridalveil Fall, Vernal cannot be viewed from the valley floor by ca", 
  image_url: "https://www.yosemite.com/wp-content/uploads/2016/04/Vernal-Fall-Yosemite-Mariposa-Things-To-Do-Slide-.jpg", 
  start_time: "2022-12-30", 
  end_time:"2022-12-30"
)

Place.create(
  trip_id: 3, 
  address: "Half Dome Ca", 
  name: "Half Dome", 
  description: "Half Dome’s uniquely identifiable face stands proudly over the eastern end of Yosemite Valley. The trail to Half Dome from Yosemite Valley is an extremely steep and strenuous hike covering over 14-16 miles. Hikers gain 4,800 feet of elevation along the trail that passes highlights such as Vernal Fall and Nevada Fall, before reaching the cables on Half Dome’s steep granite domes. Steel cable handrails and wooden planks are set up along the dome to assist hikers to the summit in the summer months. The cables are removed every October, and replaced in late May.", 
  image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d6/Half_Dome_from_Glacier_Point%2C_Yosemite_NP_-_Diliff.jpg", 
  start_time: "2023-01-01", 
  end_time:"2023-01-01"
)
