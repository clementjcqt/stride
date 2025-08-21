# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

p "starting seeding..."
unless User.find_by(email: "toto@toto.fr")
  User.create(email: "toto@toto.fr", password: "123456")
end

User.create(
  level:'beginner',
  age: 23,
  gender: 'female',
  height: 187,
  weight: 67,
  availability: ['vendredi', 'samedi'],
  conditions: nil
)

Event.create(
  title: "Tokyo Marathon",
  location: "Tokyo",
  country: "Japan",
  date: "2026-03-01",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 0,
  difficulty: "Advanced",
  photo_url: "https://bit.ly/tokyo-marathon-photo",
  source_url: "https://tokyo42195.org/en/news/en_250623_01.html"
)

Event.create(
  title: "Athens Half Marathon",
  location: "Athènes",
  country: "Greece",
  date: "2026-03-09",
  event_type: "Semi-Marathon",
  distance_km: 21.0975,
  denivele: 0,
  difficulty: "Intermediate",
  photo_url: "https://bit.ly/athens-half-photo",
  source_url: "https://en.wikipedia.org/wiki/Semi-Marathon_d'Athènes"
)

Event.create(
  title: "TCS",
  location: "London",
  country: "United Kingdom",
  date: "2025-04-27",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 100,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1469474968028-56623f02e42e",
  source_url: "https://www.tcslondonmarathon.com/the-event/tcs-london-marathon-2025"
)

Event.create(
  title: "Marathon de Paris",
  location: "Paris",
  country: "France",
  date: "2026-04-12",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 50,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1558981403-c5f9899a28bc",
  source_url: "https://www.parismarathon.com"
)

Event.create(
  title: "Marathon International du Beaujolais",
  location: "Villefranche-sur-Saône",
  country: "France",
  date: "2026-11-21",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 200,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1512453979798-5ea266f8880c",
  source_url: "https://www.marathondubeaujolais.org"
)

Event.create(
  title: "Schneider Electric Marathon",
  location: "Paris",
  country: "France",
  date: "2026-04-12",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 100,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://www.se.com/fr/fr/about-us/sustainability/foundation/events/marathon-de-paris.jsp"
)

Event.create(
  title: "Harmonie Mutuelle Semi de Paris",
  location: "Paris",
  country: "France",
  date: "2026-03-01",
  event_type: "Half Marathon",
  distance_km: 21.0975,
  denivele: 50,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1544918877-5d20674f03c0",
  source_url: "https://ahotu.com/event/semi-marathon-de-paris"
)

Event.create(
  title: "Marathon des Alpes-Maritimes",
  location: "Nice–Cannes",
  country: "France",
  date: "2026-11-08",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 120,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1504893524553-b8553f3e2f78",
  source_url: "https://pro.timeto.com/fr-FR/company/team/events/marathon-des-alpes-maritimes-nice-cannes"
)

Event.create(
  title: "Marathon du Golfe",
  location: "Golfe de Saint-Tropez",
  country: "France",
  date: "2026-03-29",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 250,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1520975661595-64590a75d6b7",
  source_url: "https://www.facebook.com/marathondugolfedesainttropez/"
)

Event.create(
  title: "Marathon de la Liberté",
  location: "Caen",
  country: "France",
  date: "2026-06-07",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 80,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1461896836934-ffe607ba8211",
  source_url: "https://www.marathondelaliberte.fr/en/"
)

Event.create(
  title: "Zurich Maratón de Sevilla",
  location: "Seville",
  country: "Spain",
  date: "2025-02-23",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 60,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1526129318478-62ed807ebdf9",
  source_url: "https://www.maratondesevilla.es/"
)

Event.create(
  title: "Zurich Rock 'n' Roll",
  location: "Madrid",
  country: "Spain",
  date: "2025-04-27",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 300,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1521550834646-8762f2fbaf44",
  source_url: "https://runrocknroll.com/madrid/"
)

Event.create(
  title: "NN",
  location: "Rotterdam",
  country: "Netherlands",
  date: "2025-04-13",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 40,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1502567091907-2c9a3b3a0f82",
  source_url: "https://nnmarathonrotterdam.org/en/"
)

Event.create(
  title: "Run Rome The Marathon",
  location: "Rome",
  country: "Italy",
  date: "2025-03-16",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 180,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1526481280698-8fcc13fd3b2e",
  source_url: "https://runromethemarathon.com/en/"
)

Event.create(
  title: "BMW",
  location: "Berlin",
  country: "Germany",
  date: "2025-09-28",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 30,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1473950575850-d0b8f1dc2f37",
  source_url: "https://www.bz-berlin.de/berlin-2011/berliner-innenstadt/berlin-wahl-2025-und-bmw-berlin-marathon-kollision"
)

Event.create(
  title: "Bank of America Chicago Marathon",
  location: "Chicago, IL",
  country: "USA",
  date: "2025-10-12",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 50,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1484249170766-998fa6efe3c0",
  source_url: "https://raceroster.com/events/2025/85525/2025-bank-of-america-chicago-marathon"
)

Event.create(
  title: "AJ Bell Great North Run",
  location: "Newcastle",
  country: "United Kingdom",
  date: "2025-09-07",
  event_type: "Road Half Marathon",
  distance_km: 21.0975,
  denivele: 120,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://www.greatrun.org/events/great-north-run/"
)

Event.create(
  title: "Sydney Marathon",
  location: "Sydney",
  country: "Australia",
  date: "2025-09-14",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 200,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9",
  source_url: "https://www.sydneymarathon.com/2025-course-change"
)

Event.create(
  title: "Sanlam",
  location: "Cape Town",
  country: "South Africa",
  date: "2025-10-19",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 150,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://capetownmarathon.com/"
)

Event.create(
  title: "Standard Chartered",
  location: "Singapore",
  country: "Singapore",
  date: "2025-12-06",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 120,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1512453979798-5ea266f8880c",
  source_url: "https://singaporemarathon.com/"
)

Event.create(
  title: "Honolulu Marathon",
  location: "Honolulu, HI",
  country: "USA",
  date: "2025-12-14",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 260,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1506086679524-493c64fdfaa6",
  source_url: "https://www.honolulumarathon.org/"
)

Event.create(
  title: "Boston Marathon",
  location: "Boston, Massachusetts",
  country: "USA",
  date: "2026-04-20",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 0,
  difficulty: "Advanced",
  photo_url: "https://bit.ly/boston-marathon-photo",
  source_url: "https://www.baa.org/races/boston-marathon"
)


Event.create(
  title: "Trinidad Alfonso",
  location: "València",
  country: "Spain",
  date: "2025-12-07",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 30,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1520962922320-2038eebab146",
  source_url: "https://www.pa-marathonvalencia.com/en/news/"
)
Event.create(
  title: "Tamarack",
  location: "Ottawa",
  country: "Canada",
  date: "2025-05-25",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 100,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1494526585095-c41746248156",
  source_url: "https://aims-worldrunning.org/race/1453"
)

Event.create(
  title: "Copenhagen Marathon",
  location: "Copenhagen",
  country: "Denmark",
  date: "2025-05-11",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 80,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1566417713940-fa6de1e8f9c5",
  source_url: "https://results.copenhagenmarathon.dk/2025/?pid=event"
)

Event.create(
  title: "Dubai Marathon",
  location: "Dubai",
  country: "United Arab Emirates",
  date: "2025-01-12",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 50,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1512453979798-5ea266f8880c",
  source_url: "https://www.facebook.com/dubaimarathon/posts/pfbid0w1AaX1m5mX8s8c6C8QY3Z3JQp7yYg7eQ9b6Quj8g1jvR2f"
)

Event.create(
  title: "Tata",
  location: "Mumbai",
  country: "India",
  date: "2025-01-19",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 120,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1512453979798-5ea266f8880c",
  source_url: "https://tatamumbaimarathon.procam.in/"
)

Event.create(
  title: "Gold Coast Marathon",
  location: "Gold Coast",
  country: "Australia",
  date: "2025-07-05",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 60,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1526521108-5b0c2c4c9c0b",
  source_url: "https://www.couriermail.com.au/sport/run/2025-gold-coast-marathon-course-changes-revealed/news-story/2d2b6b7b7c8bb"
)

Event.create(
  title: "Haspa",
  location: "Hamburg",
  country: "Germany",
  date: "2025-04-27",
  event_type: "Road Marathon",
  distance_km: 42.195,
  denivele: 80,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1533681018184-68bd1d883546",
  source_url: "https://www.welt.de/256007154"
)

Event.create(
  title: "Sanlam",
  location: "Cape Town",
  country: "South Africa",
  date: "2025-10-18",
  event_type: "Road 10K",
  distance_km: 10,
  denivele: 80,
  difficulty: "Beginner",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://capetownmarathon.com/"
)

Event.create(
  title: "Marathon international du Beaujolais",
  location: "Villefranche-sur-Saône",
  country: "France",
  date: "2025-11-22",
  event_type: "Marathon",
  distance_km: 42.195,
  denivele: 150,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34",
  source_url: "https://fr.wikipedia.org/wiki/Marathon_international_du_Beaujolais"
)

Event.create(
  title: "Semi-marathon Marvejols-Mende",
  location: "Marvejols → Mende",
  country: "France",
  date: "2025-07-27",
  event_type: "Semi-marathon",
  distance_km: 19.0, # approximation *actual is longer than 21 but route specifics*
  denivele: 400,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://fr.wikipedia.org/wiki/Semi-marathon_Marvejols-Mende"
)

Event.create(
  title: "Semi-marathon de Nice",
  location: "Nice",
  country: "France",
  date: "2025-04-20",
  event_type: "Semi-marathon",
  distance_km: 21.0975,
  denivele: 50,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://fr.wikipedia.org/wiki/Semi-marathon_de_Nice"
)

Event.create(
  title: "Auray-Vannes",
  location: "Auray → Vannes",
  country: "France",
  date: "2025-09-14",
  event_type: "Semi-marathon",
  distance_km: 21.0975,
  denivele: 100,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9",
  source_url: "https://fr.wikipedia.org/wiki/Auray-Vannes"
)

Event.create(
  title: "Toulouse Marathon Métropole",
  location: "Toulouse",
  country: "France",
  date: "2025-10-11",
  event_type: "Marathon",
  distance_km: 42.195,
  denivele: 80,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34",
  source_url: "https://fr.wikipedia.org/wiki/Marathon_de_Toulouse_M%C3%A9tropole"
)

Event.create(
  title: "Chemin du Train Saugeais",
  location: "Gilley",
  country: "France",
  date: "2025-08-24",
  event_type: "Semi-marathon",
  distance_km: 21.1,
  denivele: 200,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Foulées Gouvillaises",
  location: "Gouville-sur-Mer",
  country: "France",
  date: "2025-08-23",
  event_type: "Semi-marathon",
  distance_km: 21.0,
  denivele: 30,
  difficulty: "Beginner",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Marathon des Oussaillès",
  location: "Saint-Girons",
  country: "France",
  date: "2025-08-24",
  event_type: "Marathon",
  distance_km: 42.195,
  denivele: 300,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://www.ahotu.com/calendar/running/marathon/france"
)

Event.create(
  title: "Run in Séné Nature",
  location: "Séné",
  country: "France",
  date: "2025-08-24",
  event_type: "Trail / Semi-marathon",
  distance_km: 21.0,
  denivele: 250,
  difficulty: "Advanced",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://www.ahotu.com/calendar/running/marathon/france"
)

Event.create(
  title: "Semi-marathon de Bolbec",
  location: "Bolbec",
  country: "France",
  date: "2025-09-05",
  event_type: "Semi-marathon",
  distance_km: 21.1,
  denivele: 60,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Les Foulées Giennoises",
  location: "Gien",
  country: "France",
  date: "2025-09-06",
  event_type: "Semi-marathon",
  distance_km: 21.1,
  denivele: 40,
  difficulty: "Beginner",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Course des 2 Clochers",
  location: "Colleret",
  country: "France",
  date: "2025-08-24",
  event_type: "Semi-marathon",
  distance_km: 21.0,
  denivele: 50,
  difficulty: "Beginner",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://www.ahotu.com/calendar/running/semi-marathon/france"
)

Event.create(
  title: "Marathon international",
  location: "Deauville",
  country: "France",
  date: "2025-11-15",
  event_type: "Marathon",
  distance_km: 42.195,
  denivele: 70,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Semi-marathon de l'Armagnac",
  location: "Villeneuve-de-Marsan",
  country: "France",
  date: "2025-09-28",
  event_type: "Semi-marathon",
  distance_km: 21.1,
  denivele: 90,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://jogging-plus.com/calendrier/courses-5-10-15-km/france/"
)

Event.create(
  title: "Semi-marathon de Marcq-en-Barœul",
  location: "Marcq-en-Barœul",
  country: "France",
  date: "2025-09-20",
  event_type: "Semi-marathon",
  distance_km: 21.1,
  denivele: 70,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Semi-marathon Val de Fensch",
  location: "Uckange",
  country: "France",
  date: "2025-09-21",
  event_type: "Semi-marathon",
  distance_km: 21.1,
  denivele: 60,
  difficulty: "Intermediate",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "La Yussoise",
  location: "Yutz",
  country: "France",
  date: "2025-10-05",
  event_type: "Semi-marathon",
  distance_km: 21.1,
  denivele: 50,
  difficulty: "Beginner",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Les Foulées Montoises",
  location: "Mont-Bernanchon",
  country: "France",
  date: "2025-10-12",
  event_type: "Course 21 km",
  distance_km: 21.0,
  denivele: 50,
  difficulty: "Beginner",
  photo_url: "https://images.unsplash.com/photo-1523805009345-7448845a9e53",
  source_url: "https://fr.milesrepublic.com/semi-marathon"
)

Event.create(
  title: "Corrida de Montech",
  location: "Montech",
  country: "France",
  date: "2025-08-22",
  event_type: "Course 10 km",
  distance_km: 10.0,
  denivele: 20,
  difficulty: "Beginner",
  photo_url: "https://images.unsplash.com/photo-1520975922284-5f519b6b1a5a",
  source_url: "https://www.ahotu.com/calendar/running/france"
)

p "user created: #{User.last.email}"

p 'finished seeding'

# require "ruby_llm"
# require "dotenv/load"

# RubyLLM.configure do |config|
#   config.openai_api_key = ENV["GITHUB_TOKEN"]
#   config.openai_api_base = "https://models.inference.ai.azure.com"
# end
