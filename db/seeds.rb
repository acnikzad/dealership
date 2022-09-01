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
  "phone_number" => "(510) 999-0000",
  "address" => "123 Main Street",
  "city" => "Oakland",
  "cash" => 100000,
  "user_id" => "1"
})

@dealer = Dealer.create({
  "name" => "Matts Auto Grove",
  "phone_number" => "(916) 888-1111",
  "address" => "123 Second Street",
  "city" => "Sacramento",
  "cash" => 100000,
  "user_id" => "2"
})

@dealer = Dealer.create({
  "name" => "Waynes Auto World",
  "phone_number" => "(523) 777-2222",
  "address" => "123 Third Avenue",
  "city" => "Los Angeles",
  "cash" => 100000,
  "user_id" => "3"
})

@dealer = Dealer.create({
  "name" => "Scalas Quality Cars",
  "phone_number" => "(808) 777-2222",
  "address" => "123 Fourth Avenue",
  "city" => "San Diego",
  "cash" => 100000,
  "user_id" => "4"
})

@dealer = Dealer.create({
  "name" => "Berries Best Cars",
  "phone_number" => "(415) 777-2222",
  "address" => "123 Fourth Avenue",
  "city" => "San Francisco",
  "cash" => 100000,
  "user_id" => "5"
})

# CARS ***********************

colors = ["Blue", "Black", "White", "Silver", "Red", "Green", "Charcoal"]
toyotas = ["4Runner", "Tundra", "Camry", "Avalon", "Corolla", "Yaris", "Rav4", "Sienna", "FJ", "Sequoia", "Tacoma"]
hondas = ["Accord", "Civic", "Civic Coupe", "CRV", "Pilot", "Ridgeline", "Fit", "Element"]
fords = ["F-150", "F-250", "F-350", "Mustang", "Taurus", "Fusion", "Focus", "Flex", "Explorer", "Expedition", "Escape", "Transit", "Fiesta"]
acuras = ["Integra", "TL", "TSX", "ILX", "RDX", "'MDX"]
subarus = ["WRX", "WRX Hatchback", "Outback", "Legacy", "Forester", "BRZ", "Crosstrek", "Ascent"]
chevys = ["Silverado 1500", "Silverado 2500", "Silverado 3500", "Camaro", "Equinox", "Cruz", "Aveo", "Malibu", "Corvette", "Suburban", "Express"]
dodges = ["Ram 1500", "Ram 2500", "Ram 3500", "Challenger", "Charger", "Viper", "Durango", "Nitro", "Magnum"]
bmws = ["325i", "325i Coupe", "525i", "745i", "325xi", "X3", "X5", "X6", "M3", "M5"]
nissans = ["Z", "Pathfinder", "Frontier", "Xterra", "Armada", "Murano", "Rogue", "Juke", "GT-R", "Titan", "Quest", "Maxima", "Altima", "Sentra", "Versa"]
vws = ["Jetta", "Passat", "Beetle", "Touareg", "Tiguan", "Golf", "GTI", "Phaeton", "Vanagon", "Transporter"]

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = toyotas[rand(0..toyotas.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "Tundra" || random_model == "Tacoma"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "Truck"
  elsif random_model == "4Runner" || random_model == "FJ" || random_model == "Sequoia" || random_model == "Rav4"
    drivetrain = ["4x4", "FWD"].sample
    car_type = "SUV"
  elsif random_model == "Sienna"
    drivetrain = "FWD"
    car_type = "Van"
  else
    drivetrain = "FWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Toyota",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = hondas[rand(0..hondas.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "Ridgeline"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "Truck"
  elsif random_model == "Pilot" || random_model == "Element" || random_model == "CRV"
    drivetrain = ["4x4", "FWD"].sample
    car_type = "SUV"
  elsif random_model == "Civic Coupe"
    drivetrain = "FWD"
    car_type = "Coupe"
  elsif random_model == "Fit"
    drivetrain = "FWD"
    car_type = "Hatchback"
  else
    drivetrain = "FWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Honda",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = acuras[rand(0..acuras.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "RDX" || random_model == "MDX"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "SUV"
  elsif random_model == "Integra"
    drivetrain = "FWD"
    car_type = "Coupe"
  else
    drivetrain = "FWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Acura",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = fords[rand(0..fords.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "F-150" || random_model == "F-250" || random_model == "F-350"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "Truck"
  elsif random_model == "Mustang"
    drivetrain = "RWD"
    car_type = "Coupe"
  elsif random_model == "Flex" || random_model == "Explorer" || random_model == "Expedition" || random_model == "Escape"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "SUV"
  elsif random_model == "Transit"
    drivetrain = "RWD"
    car_type = "Van"
  elsif random_model == "Fiesta"
    drivetrain = "FWD"
    car_type = "Hatchback"
  else
    drivetrain = "FWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Ford",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = chevys[rand(0..chevys.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "Silverado 1500" || random_model == "Silverado 2500" || random_model == "Silverado 3500"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "Truck"
  elsif random_model == "Camaro" || random_model == "Corvette"
    drivetrain = "RWD"
    car_type = "Coupe"
  elsif random_model == "Express"
    drivetrain = "FWD"
    car_type = "Van"
  elsif random_model == "Equinox" || random_model == "Suburban"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "SUV"
  else
    drivetrain = "FWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Cheverolet",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = dodges[rand(0..dodges.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "Ram 1500" || random_model == "Ram 2500" || random_model == "Ram 3500"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "Truck"
  elsif random_model == "Challenger" || random_model == "Viper"
    drivetrain = "RWD"
    car_type = "Coupe"
  elsif random_model == "Magnum"
    drivetrain = "RWD"
    car_type = "Wagon"
  elsif random_model == "Durango" || random_model == "Nitro"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "SUV"
  else
    drivetrain = "RWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Dodge",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = bmws[rand(0..bmws.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "X3" || random_model == "X5" || random_model == "X6"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "SUV"
  elsif random_model == "M3" || random_model == "M5" || random_model == "325i Coupe"
    drivetrain = "RWD"
    car_type = "Coupe"
  else
    drivetrain = "RWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "BMW",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = nissans[rand(0..nissans.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "Pathfinder" || random_model == "Xterra" || random_model == "Armada" || random_model == "Murano" || random_model == "Rogue" || random_model == "Juke"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "SUV"
  elsif random_model == "Titan" || random_model == "Frontier"
    drivetrain = ["4x4", "RWD"].sample
    car_type = "Truck"
  elsif random_model == "Quest"
    drivetrain = ["AWD", "FWD"].sample
    car_type = "Van"
  elsif random_model == "Z"
    drivetrain = "RWD"
    car_type = "Coupe"
  elsif random_model == "GT-R"
    drivetrain = "AWD"
    car_type = "Coupe"
  else
    drivetrain = "RWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Nissan",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = subarus[rand(0..subarus.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "Forester" || random_model == "Ascent"
    drivetrain = "AWD"
    car_type = "SUV"
  elsif random_model == "Crosstrek" || random_model == "Outback"
    drivetrain = "AWD"
    car_type = "Wagon"
  elsif random_model == "WRX Hatchback"
    drivetrain = "AWD"
    car_type = "Hatchback"
  elsif random_model == "BRZ"
    drivetrain = "RWD"
    car_type = "Coupe"
  else
    drivetrain = "AWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Subaru",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end

100.times do 
  random_year = rand(1980..2022)
  random_miles = rand(10..250000)
  random_model = vws[rand(0..vws.length - 1)]
  random_color = colors[rand(0..colors.length - 1)]
  random_dealer = rand(1..5)

  if random_year < 1990
    random_price = rand(5000..8000)
  elsif random_year < 2000
    random_price = rand(8001..15000)
  elsif random_year < 2010
    random_price = rand(15001..20000)
  elsif random_year < 2020
    random_price = rand(20001..35000)
  else
    random_price = rand(35000..60000)
  end

  if random_model == "Touareg" || random_model == "Tiguan"
    drivetrain = "AWD"
    car_type = "SUV"
  elsif random_model == "Golf" || random_model == "GTI"
    drivetrain = "FWD"
    car_type = "Hatchback"
  elsif random_model == "Beetle"
    drivetrain = "FWD"
    car_type = "Coupe"
  elsif random_model == "Vanagon" || random_model == "Transporter"
    drivetrain = ["FWD", "4x4"].sample
    car_type = "Coupe"
  else
    drivetrain = "FWD"
    car_type = "Sedan"
  end

  @car = Car.create({
    "year" => random_year,
    "make" => "Volkswagon",
    "model" => random_model,
    "color" => random_color,
    "drivetrain" => drivetrain,
    "car_type" => car_type,
    "price" => random_price,
    "mileage" => random_miles,
    "dealer_id" => random_dealer
  })
end