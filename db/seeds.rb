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

puts "creating car"

user1 = User.create username: 'test', email: 'test@test.com', password: '123123'
user2 = User.create username: 'test2', email: 'test2@test2.com', password: '123123'


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

puts "done"
