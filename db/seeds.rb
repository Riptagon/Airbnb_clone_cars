require "open-uri"

ferrari_images = %w[
  https://images.unsplash.com/photo-1592198084033-aade902d1aae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80
  https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRnD_RgE4trARlM64NgggF1sKdB9njwm-qCTtVhzxyF4mQcdljT6G0xe9wr2zIK79RNXI&usqp=CAU
  https://images.unsplash.com/photo-1525655140339-44a2e0da4bb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80
]

mclaren_images = %w[
  https://robbreport.com/wp-content/uploads/2022/04/1-5.jpg?w=1000
  https://images.unsplash.com/photo-1577473403731-a36ec9087f44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80
  https://i.pinimg.com/originals/d1/b0/b6/d1b0b6e5a2d391c53a23df494809099d.jpg
  https://images.unsplash.com/photo-1592199299806-e7349699f6a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80
]

honda_images = %w[
  https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-acura-nsx-in-long-beach-blue-pearl-107-1605118703.jpg?crop=0.660xw:0.494xh;0.236xw,0.276xh&resize=1200:*
  https://cdn.motor1.com/images/mgl/WOWn6/s1/2021-acura-nsx-rear.jpg
  https://cdn.motor1.com/images/mgl/7xXPo/s1/2021-acura-nsx-interior.jpg
]

porsche_images = %w[
  https://www.tuningblog.eu/wp-content/uploads/2020/05/Porsche-911-991.2-turbo-s-Tuning-Regula-Exclusive-4.jpg
  https://cdn.elferspot.com/wp-content/uploads/2020/09/Porsche-991-Turbo-S-8.jpg
  https://www.motorcarsofjackson.com/imagetag/490/6/f/Used-2021-Porsche-911-Turbo-S-Jackson-MS.jpg
  https://assetto-corsa.lu/wp-content/uploads/2020/09/Porsche-911-992-Turbo-S-_-blau-00008.jpg
  https://www.tuningblog.eu/wp-content/uploads/2020/05/Porsche-911-991.2-turbo-s-Tuning-Regula-Exclusive-2.jpg
]

nissan_images = %w[
  https://s1.cdn.autoevolution.com/images/news/purple-nissan-gt-r-is-so-cool-it-deserves-its-own-song-176831-7.jpg
  https://i.ytimg.com/vi/mZiAI13uXHg/maxresdefault.jpg
  https://s1.cdn.autoevolution.com/images/news/gallery/purple-nissan-gt-r-is-so-cool-it-deserves-its-own-song_2.jpg
  https://s1.cdn.autoevolution.com/images/news/gallery/purple-nissan-gt-r-is-so-cool-it-deserves-its-own-song_9.jpg
]

lambo_images = %w[
  https://i.auto-bild.de/ir_img/3/1/0/2/1/6/5/4705b076529a3e3a.jpg
  https://i.ytimg.com/vi/Ik7opnzG-1Q/maxresdefault.jpgs
]

corvette_images = %w[
  https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Chevrolet_Corvette_C8_IAA_2021_1X7A0156.jpg/800px-Chevrolet_Corvette_C8_IAA_2021_1X7A0156.jpg
  https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Chevrolet_Corvette_C8_IAA_2021_1X7A0155.jpg/2560px-Chevrolet_Corvette_C8_IAA_2021_1X7A0155.jpg
  https://www.corvette-neff.de/fileadmin/bilder/corvette-2021/interior/adrenaline-red.jpg
]

maserati_images = %w[
  https://c.ndtvimg.com/2020-09/i2o0a3q8_maserati-mc20_625x300_10_September_20.png
  https://car-images.bauersecure.com/wp-images/4158/mc20_028.jpg
  https://cdn-redergo.avrean.net/?url=https://topgear-prod-cms.avrean.net/sites/default/files/2022-10/Maserati-MC20-Cielo-Test-Sicilia-13.jpg
  https://i0.wp.com/goflatoutph.com/wp-content/uploads/2020/09/07-MC20-white-background.jpg?ssl=1
]

puts "fetching images"

ferrari_hash_images = ferrari_images.map.with_index do |img, i|
  img = URI.open(img)
  {io: img, filename: "ferrari_#{i}", content_type: "image/png"}
end
mclaren_hash_images = mclaren_images.map.with_index do |img, i|
  img = URI.open(img)
  {io: img, filename: "mclaren_#{i}", content_type: "image/png"}
end
honda_hash_images = honda_images.map.with_index do |img, i|
  img = URI.open(img)
  {io: img, filename: "honda_#{i}", content_type: "image/png"}
end
porsche_hash_images = porsche_images.map.with_index do |img, i|
  img = URI.open(img)
  {io: img, filename: "porsche_#{i}", content_type: "image/png"}
end
nissan_hash_images = nissan_images.map.with_index do |img, i|
  img = URI.open(img)
  {io: img, filename: "nissan_#{i}", content_type: "image/png"}
end
# lambo_hash_images = lambo_images.map.with_index do |img, i|
#   img = URI.open(img)
#   {io: img, filename: "lambo_#{i}", content_type: "image/png"}
# end
corvette_hash_images = corvette_images.map.with_index do |img, i|
  img = URI.open(img)
  {io: img, filename: "corvette_#{i}", content_type: "image/png"}
end
maserati_hash_images = maserati_images.map.with_index do |img, i|
  img = URI.open(img)
  {io: img, filename: "maserati_#{i}", content_type: "image/png"}
end

ferrari = {
  brand: "Ferrari",
  model: "488 Pista",
  hp: 720, color: "red",
  kilometers: 21000,
  year: 2021,
  price: 280_500,
  fuel_consumption: 15,
  description: "The Ferrari 488 Pista is powered by the most powerful V8 engine in the Maranello marque’s history and is the company’s special series sports car with the highest level yet of technological transfer from racing. In fact the name, meaning ‘track’ in Italian, was chosen speciﬁcally to testify to Ferrari’s unparalleled heritage in motor sports. Technically, the Ferrari 488 Pista encompasses all of the experience built up on the world’s circuits by the 488 Challenge and the 488 GTE."
}
mclaren = {
  brand: "McLaren",
  model: "p1",
  hp: 903,
  color: "Volcano Orange",
  kilometers: 13_567,
  year: 2021,
  price: 1_480_000,
  fuel_consumption: 14,
  description: "The astonishing McLaren P1™, which debuted in production form in March 2013 at the Geneva Motor Show, had a clear goal – to be the best driver’s car in the world on road and track. To achieve this objective, McLaren used all its 50 years of racing experience and success, especially in the fields of aerodynamics and lightweight carbon fibre technology. The result was a car with an unprecedented amount of downforce for a road vehicle; levels similar to a GT3 racing car and yet with even greater ground effect. This downforce not only boosts cornering and braking performance, it also helps balance, stability and driveability at all speeds. McLaren introduced the carbon fibre chassis to the world of Formula 1 in 1981 with the MP4/1, and had the first carbon-bodied road car in the McLaren F1.  Always at the forefront of vehicle aerodynamics, McLaren raised the supercar performance bar in the 1990s with the F1; with the McLaren P1™, it redefined it once again. To live up to its design brief of being the best driver’s car in the world, the McLaren P1™ had to have exceptional straight-line performance and instant throttle response. To deliver this, it uses an innovative IPAS petrol-electric powertrain comprising a McLaren 3.8-litre twin-turbo V8 petrol engine, coupled to a single electric motor. Collectively known as M838TQ, the combined power output is 916PS (903bhp). As important as absolute power is the electric motor’s ability to provide instant torque, making the powertrain superbly responsive. It is also amazingly efficient. The McLaren P1™ returns 34.0mpg (8.3 l/100km) on the EU combined cycle, with CO2 emissions of 194 g/km. The electric motor offers a range of more than 10km (6.8 miles) in full electric mode on the NEDC cycle, with emissions dropping to zero."
}

honda = {
  brand: "Honda",
  model: "Acura nsx",
  hp: 507,
  color: "blue",
  kilometers: 8123,
  year: 2022,
  price: 150_000,
  fuel_consumption: 12,
  description: "Hand-built by master technicians at the Performance Manufacturing Center (PMC) with a limited production of 350 units globally, the new NSX embodies the pinnacle of dynamic driving worthy of the Type S badge. While continuing to honor its lineage with meticulous engineering and striking design, the NSX Type S pushes the boundaries of possibility with more power and more sound for a more adrenaline-fueled drive."
}
porsche = {
  brand: "Porsche",
  model: "911 turbo s",
  hp: 640,
  color: "white",
  kilometers: 9723,
  year: 2020,
  price: 15_000,
  fuel_consumption: 12,
  description: "Our engineers like to talk about the most perfect sports car ever. Incredible performance, whilst being comfortable and fully suitable for everyday use. The 911 Turbo models continue this philosophy."
}
nissan = {
  brand: "Nissan",
  model: "GT-R",
  hp: 890,
  color: "purple",
  kilometers: 10123,
  year: 2021,
  price: 34_000,
  fuel_consumption: 14,
  description: "With up to 600-hp under its hood, the 2022 Nissan GT-R is a powerful and tenacious-handling sports car that earns its nickname of Godzilla. Unfortunately, its formula hasn't changed much since it was introduced in 2009 but the sports cars it competes with have. Inside is where the GT-R's age becomes more apparent, with an outdated design and down-market materials that are shared with lesser Nissan models. The GT-R does have several things going for it though. For one thing, all-wheel drive is standard on every model which helps with handling and gives the car a planted, confident feel. Plus, it's more rare than a Porsche 911, so you'll stand out in traffic or at your next track day."
}
corvette = {
  brand: "Corvette",
  model: "C8",
  hp: 498,
  color: "red",
  kilometers: 3123,
  year: 2021,
  price: 10_000,
  fuel_consumption: 12,
  description: "With supercar performance, an affordable price tag, and flashy styling, the 2023 Chevrolet Corvette honors the nameplate's decades-old status as an automotive icon—but with a mid-engine twist. The current C8 is the first generation to have its naturally aspirated V-8 engine mounted behind the passenger compartment, which boosts Chevy's halo sports car into the realm of exotic machinery. Its sharp handling and explosive acceleration are a match for sports cars costing tens of thousands more, but it’s also comfortable and refined enough to drive cross-country. The C8 is offered as both a convertible and a coupe, and the hardtop model has a roof panel that can be lifted off to allow the sun to shine in. Its cabin is cozy but comfortable and there's adequate trunk storage for groceries or luggage, making the Corvette an easy sports car to live with on a daily basis. We're charmed by this perennial favorite and we think you will be too."
}
lambo = {
  brand: "Lamborghini",
  model: "Urus",
  hp: 650,
  color: "yellow",
  kilometers: 123,
  year: 2022,
  price: 150_000,
  fuel_consumption: 12,
  description: "Powered by Lamborghini's 4.0-liter twin-turbo V8 engine, the Urus is all about a performance mindset that brings together fun-to-drive and astounding vehicle capabilities. The design, performance, driving dynamics and unbridled emotion flow effortlessly into this visionary realization of authentic Lamborghini DNA."
}
maserati = {
  brand: "Maserati",
  model: "MC20",
  hp: 621,
  color: "WHITE",
  kilometers: 4123,
  year: 2022,
  price: 160_000,
  fuel_consumption: 13,
  description: "With a carbon-fiber structure, a hellacious 621-hp twin-turbo V-6, and neck-wrenching cornering power, the 2023 Maserati MC20 is an exotic street car that smacks you in the face with a race-car driving experience. Its slinky Italian-esque supercar shape and butterfly-style doors have passers-by staring at it just like they do at Ferraris and Lamborghinis. The new Cielo spyder allows for open-air cruising—and being seen—at the touch of a button. Like many a supercar, though, the MC20 comes with its own specific set of drawbacks. While its suspension is compliant enough for the occasional road trip, the car’s cargo capacity is minuscule; you’ll need your administrative assistant to follow you with your luggage. Maserati also offers virtually no driver-assistance features on the MC20; there’s no adaptive cruise control or lane-keeping assist. So be it. From the view out the windshield to its cacophony of wild engine sounds to its butt-kicking performance, the MC20 is made for hard-core enthusiast drivers with the money to indulge themselves in a car with overwhelming character."
}

puts "creating car"

user1 = User.create username: 'test', email: 'test@test.com', password: '123123'
img = URI.open("https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Image-HD.png")
user1.photo.attach({io: img, filename: "user_one", content_type: "image/png"})

user2 = User.create username: 'test2', email: 'test2@test2.com', password: '123123'
img = URI.open("https://simg.nicepng.com/png/small/107-1070892_avatar-png-avatar-2.png")
user2.photo.attach({io: img, filename: "user_two", content_type: "image/png"})

user3 = User.create username: 'test3', email: 'test3@test3.com', password: '123123'
img = URI.open("https://e7.pngegg.com/pngimages/605/521/png-clipart-vin-diesel-zoomed-face-vin-diesel-movies-vin-diesel-thumbnail.png")
user3.photo.attach({io: img, filename: "user_three", content_type: "image/png"})


car = Car.new ferrari
car.photos.attach(ferrari_hash_images)
car.user = user1
car.save!

car = Car.new mclaren
car.photos.attach(mclaren_hash_images)
car.user = user2
car.save!

car = Car.new honda
car.photos.attach(honda_hash_images)
car.user = user1
car.save!

# car = Car.new lambo
# car.photos.attach(lambo_hash_images)
# car.user = user3
# car.save!

car = Car.new nissan
car.photos.attach(nissan_hash_images)
car.user = user3
car.save!

car = Car.new corvette
car.photos.attach(corvette_hash_images)
car.user = user1
car.save!

car = Car.new maserati
car.photos.attach(maserati_hash_images)
car.user = user2
car.save!

car = Car.new porsche
car.photos.attach(porsche_hash_images)
car.user = user3
car.save!

puts "done"
