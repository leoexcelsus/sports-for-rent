# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creating 4 users ...'

user1 = User.new(email: 'user1@user.com', password: '123456')
user2 = User.new(email: 'user2@user.com', password: '123456')
user3 = User.new(email: 'user3@user.com', password: '123456')
user4 = User.new(email: 'user4@user.com', password: '123456')

puts "... saving to database ..."

user1.save!
user2.save!
user3.save!
user4.save!

puts '...4 users created'

puts "creating 6 products and assiging it's owners ..."

product1 = Product.new(
  description: 'Bicicleta Trek para triathlon',
  price: 13000,
  address: 'SQS 102, Bl. D, apto. 405, Asa Sul. Brasília-DF',
  latitude: -16.1,
  longitude: -45.2)
product1.user = user1

product2 = Product.new(
  description: 'Skate elétrico Cruiser',
  price: 3000,
  address: 'SQN 311, Bl. H, apto. 101, Asa Norte. Brasília-DF',
  latitude: -16.05,
  longitude: -45.053)
product2.user = user1

product3 = Product.new(
  description: 'Raquete de Tenis Wilson',
  price: 3500,
  address: 'SQN 311, Bl. H, apto. 101, Asa Norte. Brasília-DF',
  latitude: -16.05,
  longitude: -45.053)
product3.user = user1

product4 = Product.new(
  description: 'Ciclindro e vestimenta para mergulho',
  price: 20000,
  address: 'Península dos Ministros, Lago Sul. Brasília-DF',
  latitude: -15.82,
  longitude: -47.85)
product4.user = user2

product5 = Product.new(
  description: 'Prancha de StandUp Pedal',
  price: 5000,
  address: 'QI 23, conj. C, casa 12, Lago Sul. Brasília-DF',
  latitude: -15.843724,
  longitude: -47.845620)
product5.user = user2

product6 = Product.new(
  description: 'Kayak Nautika',
  price: 5000,
  address: 'QI 23, conj. C, casa 12, Lago Sul. Brasília-DF',
  latitude: -15.843724,
  longitude: -47.845620)
product6.user = user2

puts "... saving to database ..."

product1.save!
product2.save!
product3.save!
product4.save!
product5.save!
product6.save!

puts "... 6 products created"

puts "... creating 5 rentals and assigning their products and customers"

rental1 = Rental.new(
  begin_date: Date.strptime('02/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('12/09/2020', '%d/%m/%Y'),
  rental_price: 13000,
  costumer_review: 'Bike muito leve e bem regulada. Foi bem divertido poder treinar em Brasília na minha viagem de negócios. Recomendo o produto.',
  renter_review: 'Usuário sem zelo. Devolveu o equipamento todo sujo.',
  )
rental1.product = product1
rental1.user = user3

rental2 = Rental.new(
  begin_date: Date.strptime('12/06/2020', '%d/%m/%Y'),
  end_date: Date.strptime('14/06/2020', '%d/%m/%Y'),
  rental_price: 19000,
  costumer_review: 'Aluguel o equipamento, mas não consegui usar de fato, mas parecia tudo em ordem.',
  renter_review: 'O usuário é nota 10. Devolveu o equipamento em perfeitas condições.',
  )
rental2.product = product4
rental2.user = user4

rental3 = Rental.new(
  begin_date: Date.strptime('25/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('28/09/2020', '%d/%m/%Y'),
  rental_price: 5000,
  costumer_review: '',
  renter_review: '',
  )
rental3.product = product5
rental3.user = user4

rental4 = Rental.new(
  begin_date: Date.strptime('20/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('22/09/2020', '%d/%m/%Y'),
  rental_price: 3500,
  costumer_review: 'Muito boas as raquetes. E o preço está muito barato!',
  renter_review: 'Está mesmo muito barato! Vou subir um pouco o preço.',
  )
rental4.product = product3
rental4.user = user2

rental5 = Rental.new(
  begin_date: Date.strptime('23/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('30/09/2020', '%d/%m/%Y'),
  rental_price: 3500,
  costumer_review: '',
  renter_review: '',
  )
rental5.product = product3
rental5.user = user4

puts "... saving to database ..."

rental1.save!
rental2.save!
rental3.save!
rental4.save!
rental5.save!

puts "... 5 rentals created"

puts "Seeding is done!"
