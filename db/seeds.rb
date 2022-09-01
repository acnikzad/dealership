# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# USERS ***********************

user = User.all

@user = User.create({
  "first_name" => "Frank",
  "last_name" => "Banner",
  "email" => "frank@banner.com",
  "password" => "password",
  "password_confirmation" => "password_confirmation"
})

@user = User.create({
  "first_name" => "Matt",
  "last_name" => "Grove",
  "email" => "matt@grove.com",
  "password" => "password",
  "password_confirmation" => "password_confirmation"
})

@user = User.create({
  "first_name" => "Wayne",
  "last_name" => "Bowls",
  "email" => "wayne@bowls.com",
  "password" => "password",
  "password_confirmation" => "password_confirmation"
})

@user = User.create({
  "first_name" => "Ashley",
  "last_name" => "Scala",
  "email" => "wayne@bowls.com",
  "password" => "password",
  "password_confirmation" => "password_confirmation"
})

@user = User.create({
  "first_name" => "Karen",
  "last_name" => "Berry",
  "email" => "karen@berry.com",
  "password" => "password",
  "password_confirmation" => "password_confirmation"
})

@user = User.create({
  "first_name" => "Manu",
  "last_name" => "Facturer",
  "email" => "manu@facturer.com",
  "password" => "password",
  "password_confirmation" => "password_confirmation"
})

# DEALERS ***********************

dealer = Dealer.all

@dealer = Dealer.create({
  "name" => "Banners Value Cars",
  "number" => "(510) 999-0000",
  "address" => "123 Main Street",
  "city" => "Oakland",
  "cash" => 100000,
  "user_id" => "1"
})

@dealer = Dealer.create({
  "name" => "Matts Auto Grove",
  "number" => "(916) 888-1111",
  "address" => "123 Second Street",
  "city" => "Sacramento",
  "cash" => 100000,
  "user_id" => "2"
})

@dealer = Dealer.create({
  "name" => "Waynes Auto World",
  "number" => "(523) 777-2222",
  "address" => "123 Third Avenue",
  "city" => "Los Angeles",
  "cash" => 100000,
  "user_id" => "3"
})

@dealer = Dealer.create({
  "name" => "Scalas Quality Cars",
  "number" => "(808) 777-2222",
  "address" => "123 Fourth Avenue",
  "city" => "San Diego",
  "cash" => 100000,
  "user_id" => "4"
})

@dealer = Dealer.create({
  "name" => "Berries Best Cars",
  "number" => "(415) 777-2222",
  "address" => "123 Fourth Avenue",
  "city" => "San Francisco",
  "cash" => 100000,
  "user_id" => "5"
})

# CARS ***********************

colors = ["Blue", "Black", "White", "Silver", "Red", "Green", "Charcoal"]
toyotas = ["4Runner", "Tundra", "Camry", "Avalon", "Corolla", "Yaris", "Rav4", "Sienna", "FJ", "Sequoia", "Tacoma"]
hondas = ["Accord", "Civic", "CRV", "Pilot", "Ridgeline", "Fit", "Element"]
fords = ["F-150", "F-250", "F-350", "Mustang", "Taurus", "Fusion", "Focus", "Flex", "Explorer", "Expedition", "Escape", "Transit"]
acuras = ["Integra", "TL", "TSX", "ILX", "RDX", "'MDX"]
subarus = ["WRX", "Outback", "Legacy", "Forester", "BRZ", "Crosstrek"]
chevys = ["1500", "2500", "Camaro", "Equinox", "Cruz", "Aveo", "Malibu", "Corvette"]
dodges = ["1500", "2500", "Challenger", "Charger", "Viper", "Durango", "Nitro"]
bmws = ["325i", "525i", "745i", "325xi", "X3", "X5", "X6", "M3", "M5"]
nissans = ["350z", "Pathfinder", "Frontier", "Xterra", "Armada"]

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_price = rand(5000..60000)

  if random_toyota == "4Runner" || random_model == "Tundra" || random_model == "Tacoma" || random_model == "FJ"
    drivetrain = "4x4"
  else
    drivetrain = "FWD"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Toyota"
    "model" => random_model,
    "color"
    "drivetrain"
    "car_type"
    "price"
    "mileage"
    "dealer_id"

  })
  
end