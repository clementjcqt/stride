# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



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
  photo_url: "https://www.musculardystrophyuk.org/app/uploads/2025/04/Tokyo-Marathon-2026-Header-image-1-scaled.jpg",
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
  photo_url: "https://images.ahotu.com/yod7X2ELEkCMMBsTYwyUPyov?w=1920&q=75&f=webp",
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
  photo_url: "https://tritravel.mymedia.delivery/1920x1194/p/o/wp-content/uploads/2017/08/278270272_10159482189744748_2667010543693952200_n.jpg",
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
  photo_url: "https://www.zaprinta.fr/wp-content/uploads/2021/06/marathon-paris.jpg",
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
  photo_url: "https://www.marathondubeaujolais.org/wp-content/uploads/2023/02/MIB-PHOTORUNNING-00242.jpg",
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
  photo_url: "data:image/jpeg;base64,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",
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
  photo_url: "https://joyfuel-nutrition.com/cdn/shop/files/Semi-marathon-de-Paris-2022-parcours-2.jpg?v=1726751736&width=1500",
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
  photo_url: "https://stadion-actu.fr/wp-content/uploads/2023/07/Marathon-des-Alpes-Maritimes-Nice-Cannes-2023-inscriptions.jpg",
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
  photo_url: "https://www.outdoorgo.com/wp-content/uploads/2018/02/St-Tropez.jpg",
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
  photo_url: "https://www.marathondelaliberte.fr/wp-content/uploads/MARATHONDELALIBERTE_23-1.jpg",
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
