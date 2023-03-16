# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '### Users ###'
admin = User.find_or_create_by(email: 'admin@example.com', first_name: 'Super', last_name: 'Admin', is_admin: true)
admin.password = 'password1'
admin.save
user = User.find_or_create_by(email: 'user1@example.com', first_name: 'Joe', last_name: 'Doe')
user.password = 'password1'
user.save
user2 = User.find_or_create_by(email: 'user2@example.com', first_name: 'Jane', last_name: 'Doe')
user2.password = 'password1'
user2.save

puts '### Property Types ###'
property_type = PropertyType.find_or_create_by(name: 'house')
property_type2 = PropertyType.find_or_create_by(name: 'apartment')
property_type3 = PropertyType.find_or_create_by(name: 'land')

puts '### Cities ###'
city = City.find_or_create_by(name: 'Warszawa')
city2 = City.find_or_create_by(name: 'Bielsko-Biała')
city3 = City.find_or_create_by(name: 'Katowice')

puts '### Property - house ###'
property = Property.find_or_create_by(
  title: 'Dom ekologiczny energooszczędny pasywny 150 m²',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et elit ornare, euismod augue non, consectetur ipsum. Donec accumsan, dui in rhoncus mollis, nunc sapien ullamcorper eros, in iaculis lorem justo pellentesque massa. Donec consequat, libero non ultricies bibendum, odio libero dapibus orci, ac vestibulum libero felis vitae magna. In lobortis quis ipsum nec finibus. Maecenas congue pretium porta. Praesent quis nibh in libero dapibus pretium. Suspendisse potenti. Aenean at lectus nec nulla semper laoreet. Integer porttitor dolor id felis viverra, eu aliquet felis hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
  price: rand(100_000..2_000_000),
  user_id: user.id,
  city_id: city.id,
  property_type_id: property_type.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'houses/house.jpeg')), filename: 'house.jpeg')
property = Property.find_or_create_by(
  title: 'Dom w zabudowie bliźniaczej Strzelin Wiosenna Nowy Media',
  description: 'Nam ac turpis quis nisl pharetra gravida sed sed nulla. Proin sit amet mauris dapibus, maximus nunc eu, iaculis sapien. Cras faucibus orci at tincidunt consectetur. Aenean orci arcu, tristique a pulvinar vel, accumsan sit amet nulla. Nam elementum blandit nunc. Nunc ac lectus id mi pellentesque pulvinar sed hendrerit lacus. Praesent maximus ut elit ut efficitur. Curabitur sed massa ex. Curabitur nec efficitur nibh. Suspendisse consequat eu odio sit amet congue. Aliquam augue mi, egestas vitae magna sed, varius tristique ante.',
  price: rand(100_000..2_000_000),
  user_id: user.id,
  city_id: city.id,
  property_type_id: property_type.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'houses/house2.jpeg')), filename: 'house2.jpeg')
property = Property.find_or_create_by(
  title: 'Taras 100 m2/Działka 800 m2/Blisko Skm',
  description: 'Quisque et quam eget risus pharetra volutpat sed dictum neque. Aliquam quis ex ac eros laoreet accumsan. Quisque consequat orci vel quam sollicitudin lobortis. Integer vulputate ornare orci. Praesent lacinia varius sem in faucibus. Mauris iaculis non justo vitae pretium. Nulla eu sapien ut justo ornare ultricies. Sed bibendum nulla vel nisi bibendum, tempor aliquet mi maximus. Vestibulum non convallis nisi. Vestibulum egestas justo ac viverra faucibus. Sed sagittis velit dui. Integer turpis lacus, condimentum ac velit in, maximus ullamcorper leo. Sed cursus vitae nunc a sagittis. Nam blandit semper nunc tristique ultricies.',
  price: rand(100_000..2_000_000),
  user_id: user.id,
  city_id: city.id,
  property_type_id: property_type.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'houses/house3.jpeg')), filename: 'house3.jpeg')
property = Property.find_or_create_by(
  title: 'Oddany do użytku bliźniak z 2 stan. garażem!',
  description: 'Phasellus efficitur eros vel auctor consequat. Nulla facilisi. Sed id ullamcorper ex, quis convallis risus. Duis euismod justo ante, ac ullamcorper enim scelerisque at. Nam pellentesque, tortor at finibus efficitur, mi magna sagittis magna, vitae tincidunt lectus nunc facilisis orci. Ut vel lorem id nisl bibendum mattis nec tristique lectus. Donec diam leo, mollis et scelerisque rutrum, vulputate a ipsum.',
  price: rand(100_000..2_000_000),
  user_id: user2.id,
  city_id: city2.id,
  property_type_id: property_type.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'houses/house4.jpeg')), filename: 'house4.jpeg')
property = Property.find_or_create_by(
  title: 'Nowe osiedle domów o podwyższonym standardzie',
  description: 'Phasellus efficitur eros vel auctor consequat. Nulla facilisi. Sed id ullamcorper ex, quis convallis risus. Duis euismod justo ante, ac ullamcorper enim scelerisque at. Nam pellentesque, tortor at finibus efficitur, mi magna sagittis magna, vitae tincidunt lectus nunc facilisis orci. Ut vel lorem id nisl bibendum mattis nec tristique lectus. Donec diam leo, mollis et scelerisque rutrum, vulputate a ipsum.',
  price: rand(100_000..2_000_000),
  user_id: user2.id,
  city_id: city2.id,
  property_type_id: property_type.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'houses/house5.jpeg')), filename: 'house5.jpeg')
property = Property.find_or_create_by(
  title: 'DOM nowo wybudowany wolnostojący 119m2 Zatyki k. Gołdapi',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere posuere aliquam. Suspendisse potenti. Morbi egestas convallis vestibulum. Nulla justo ante, faucibus vel nibh ut, aliquam elementum ante. Donec ac facilisis lacus, ut maximus nunc. Quisque ex mauris, tempus sit amet ex sed, lobortis sollicitudin nulla. Aenean volutpat hendrerit turpis in facilisis. Curabitur eleifend erat mi, id maximus risus eleifend non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc lacinia ligula augue, quis pretium nunc euismod a. Maecenas non venenatis libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam vel est eget scelerisque. Etiam lorem libero, porttitor non urna vel, malesuada condimentum sapien. Aliquam ultrices libero ut efficitur efficitur.',
  price: rand(100_000..2_000_000),
  user_id: user2.id,
  city_id: city3.id,
  property_type_id: property_type.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'houses/house6.jpeg')), filename: 'house6.jpeg')

puts '### Property - apartment ###'
property = Property.find_or_create_by(
  title: 'Kawalerka z możliwością podziału KREDYT 2% BEZPOŚREDNIO',
  description: 'Cras at vehicula urna. Maecenas sollicitudin ac dolor quis egestas. Fusce ullamcorper tincidunt eros, non vulputate ante maximus vel. Praesent laoreet lacus in lobortis dictum. Quisque volutpat, massa in efficitur aliquet, eros metus malesuada metus, et lobortis dolor odio quis quam. Donec sagittis sit amet risus sit amet consectetur. Donec sit amet aliquet nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed sit amet arcu euismod, semper ipsum egestas, venenatis sem. Donec tincidunt neque nulla, ac luctus dui pellentesque quis. Aliquam iaculis sit amet augue id rutrum.',
  price: rand(250_000..1_500_000),
  user_id: user.id,
  city_id: city3.id,
  property_type_id: property_type2.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'apartments/apartment.jpeg')), filename: 'apartment.jpeg')
property = Property.find_or_create_by(
  title: 'Katowice, ul. Asnyka , pow. 91m2, dwupoziomowe',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut fringilla dui, in tincidunt massa. Aliquam pulvinar leo libero, id porta nunc malesuada ut. Praesent tempor, quam non euismod finibus, ante libero feugiat elit, vitae suscipit odio erat sed velit. Etiam vestibulum lorem nec ex scelerisque faucibus ut sit amet libero. Maecenas congue imperdiet tristique. Sed eget lobortis dolor, vitae imperdiet augue. Curabitur scelerisque lorem a magna rhoncus, sit amet consectetur elit ornare.',
  price: rand(50_000..1_500_000),
  user_id: user.id,
  city_id: city3.id,
  property_type_id: property_type2.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'apartments/apartment2.jpeg')), filename: 'apartment2.jpeg')
property = Property.find_or_create_by(
  title: '4 p 74 m2 + ogródek 70 m2 płd-zach BEZ PROWIZJI',
  description: 'Etiam posuere libero lectus, quis tincidunt purus malesuada sit amet. Etiam vehicula rhoncus vestibulum. Proin mattis dui id est accumsan hendrerit. Duis tincidunt justo eget lacus cursus, in fringilla justo auctor. Aliquam dapibus volutpat eros, non lobortis mi fringilla nec. Aenean eu sollicitudin leo, et ornare mauris. Sed vitae diam lorem. Ut pulvinar neque elit, in faucibus lacus pulvinar vel. Praesent efficitur urna eu velit malesuada vehicula.',
  price: rand(50_000..1_500_000),
  user_id: user2.id,
  city_id: city.id,
  property_type_id: property_type2.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'apartments/apartment3.jpeg')), filename: 'apartment3.jpeg')
property = Property.find_or_create_by(
  title: 'Mieszkanie na 1000-leciu po generalnym remoncie',
  description: 'Curabitur varius facilisis eleifend. Suspendisse potenti. Duis dictum lacinia orci, nec lobortis lorem consectetur id. Duis id lectus quis ante posuere ornare. Suspendisse lacus turpis, consectetur nec elit bibendum, ultricies sodales ipsum. Fusce gravida aliquet sapien, a ultricies mauris malesuada at. Mauris vel est eget ipsum maximus feugiat.',
  price: rand(50_000..1_500_000),
  user_id: user2.id,
  city_id: city2.id,
  property_type_id: property_type2.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'apartments/apartment4.webp')), filename: 'apartment4.webp')

puts '### Property - land ###'
property = Property.find_or_create_by(
  title: 'Atrakcyjna działka w spokojnej okolicy',
  description: 'Maecenas at nisi erat. Nullam porta ante ut nulla pretium sollicitudin. Quisque gravida, metus vel rhoncus malesuada, sapien justo suscipit ligula, eu pulvinar magna elit sed enim. Morbi bibendum eget mi sit amet semper. Ut ut rhoncus mi, non ullamcorper turpis. Vivamus et velit arcu. Suspendisse in turpis sollicitudin, condimentum lectus egestas, rhoncus nisl. Morbi interdum diam eu libero ullamcorper, ut ornare sapien fermentum.',
  price: rand(50_000..1_000_000),
  user_id: user.id,
  city_id: city.id,
  property_type_id: property_type3.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'lands/land.jpeg')), filename: 'land.jpeg')
property = Property.find_or_create_by(
  title: 'Piękna działka budowlana, ogrodzona, uzbrojona',
  description: 'Mauris ligula libero, pulvinar sed consequat blandit, tempor a enim. Aenean bibendum enim et luctus gravida. Phasellus est ipsum, auctor pharetra metus vitae, cursus lacinia orci. In in mi arcu. Nulla vitae lobortis sem. Etiam id enim pellentesque, hendrerit ligula id, dignissim augue. Fusce dignissim vulputate vestibulum. Proin id ex libero. Suspendisse maximus magna ut est pharetra posuere. Morbi eget eros odio.',
  price: rand(50_000..1_000_000),
  user_id: user.id,
  city_id: city2.id,
  property_type_id: property_type3.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'lands/land2.jpeg')), filename: 'land2.jpeg')
property = Property.find_or_create_by(
  title: 'Działka budowlana Wapienica',
  description: 'Etiam quis metus eu dui euismod rutrum eget ut lorem. Quisque consectetur mauris nunc, ac ornare ipsum maximus dapibus. Curabitur egestas risus dolor, a posuere nisl sodales vel. Etiam ultrices, nisi et faucibus egestas, metus nisl gravida massa, sit amet scelerisque nisl dolor lacinia urna. Cras sagittis venenatis auctor. Nam tincidunt ipsum et ante gravida scelerisque. Etiam pharetra nisi et magna efficitur euismod. Ut sed arcu ut sapien vulputate condimentum non nec sem. Aliquam ut cursus lacus. Proin eu nibh tempus, congue ex vitae, gravida magna. Praesent aliquam condimentum vulputate. Nam vulputate ipsum eu finibus mollis. Donec ut nibh condimentum, luctus arcu pretium, bibendum sapien. Nunc sed malesuada tortor.',
  price: rand(50_000..1_000_000),
  user_id: user2.id,
  city_id: city2.id,
  property_type_id: property_type3.id
)
property.image.attach(io: File.open(Rails.root.join('app/assets/images', 'lands/land3.webp')), filename: 'land3.webp')
