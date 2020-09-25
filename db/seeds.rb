# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creating 6 users ...'

user1 = User.new(email: 'user1@user.com', password: '123456')
user2 = User.new(email: 'user2@user.com', password: '123456')
user3 = User.new(email: 'user3@user.com', password: '123456')
user4 = User.new(email: 'user4@user.com', password: '123456')
user5 = User.new(email: 'user5@user.com', password: '123456')
user6 = User.new(email: 'user6@user.com', password: '123456')

puts "... saving to database ..."

user1.save!
user2.save!
user3.save!
user4.save!
user5.save!
user6.save!

puts '... 6 users created'

puts "creating 10 products and assiging it's owners ..."

product1 = Product.new(
  description: 'Bicicleta Trek para triathlon',
  price: 12000,
  address: 'SQS 102, Bl. D, apto. 405, Asa Sul. Brasília-DF')
product1.user = user1
file1 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601059974/Bicicleta_Trek_para_triathlon_bwmpju.jpg')
product1.photo.attach(io: file1, filename: 'Bicicleta_Trek_para_triathlon.jpg', content_type: 'image/jpg')

product2 = Product.new(
  description: 'Skate elétrico Cruiser',
  price: 11000,
  address: 'SQN 311, Bl. H, apto. 101, Asa Norte. Brasília-DF')
product2.user = user2
file2 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601060216/Skate_el%C3%A9trico_Cruiser_elmmva.webp')
product2.photo.attach(io: file2, filename: 'Skate_elétrico_Cruiser.jpg', content_type: 'image/jpg')

product3 = Product.new(
  description: 'Raquete de Tenis Wilson',
  price: 3500,
  address: 'SQN 313, Bl. H, apto. 101, Asa Norte. Brasília-DF')
product3.user = user2
file3 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601060339/Raquete_de_Tenis_Wilson_n40oor.jpg')
product3.photo.attach(io: file3, filename: 'Raquete_de_Tenis_Wilson.jpg', content_type: 'image/jpg')


product4 = Product.new(
  description: 'Kit de mergulho profissional',
  price: 20000,
  address: 'Península dos Ministros, Lago Sul. Brasília-DF')
product4.user = user3
file4 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601060441/Kit_de_Mergulho_Profissional_acdpua.jpg')
product4.photo.attach(io: file4, filename: 'Kit_de_mergulho_profissional.jpg', content_type: 'image/jpg')

product5 = Product.new(
  description: 'Bicicleta Trek',
  price: 11000,
  address: 'QI 23, conj. C, casa 12, Lago Sul. Brasília-DF')
product5.user = user4
file5 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601060534/Bicicleta_Trek_ykqc2q.jpg')
product5.photo.attach(io: file5, filename: 'Bicicleta_Trek.jpg', content_type: 'image/jpg')

product6 = Product.new(
  description: 'Kayak Thork',
  price: 9999,
  address: 'QI 23, conj. C, casa 12, Lago Sul. Brasília-DF')
product6.user = user4
file6 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601060618/Kayak_Thork_qrm9fn.jpg')
product6.photo.attach(io: file6, filename: 'Kayak_Thork.jpg', content_type: 'image/jpg')

product7 = Product.new(
  description: 'Prancha de StandUp Pedal',
  price: 4000,
  address: 'Quadra 6, Conj. C, número 167, Sobradinho. Brasília-DF')
product7.user = user5
file7 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601060729/Prancha_de_StandUp_Pedal_pqtqr9.jpg')
product7.photo.attach(io: file7, filename: 'Prancha_de_StandUp_Pedal.jpg', content_type: 'image/jpg')

product8 = Product.new(
  description: 'Raquete em excelente estado',
  price: 2500,
  address: 'Quadra 6, Conj. C, número 167, Sobradinho. Brasília-DF')
product8.user = user5
file8 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601060915/Raquete_em_excelente_estado_odmzbv.jpg')
product8.photo.attach(io: file8, filename: 'Raquete_em_excelente_estado.jpg', content_type: 'image/jpg')

product9 = Product.new(
  description: 'Bike para triahlon',
  price: 9750,
  address: 'Avenida Flamboyant, 306, apto 1001, Águas Claras. Brasília-DF')
product9.user = user6

product10 = Product.new(
  description: 'Prancha - StandUp Pedal',
  price: 5000,
  address: 'Avenida Flamboyant, 306, apto 1001, Águas Claras. Brasília-DF')
product10.user = user6
file10 = URI.open('https://res.cloudinary.com/dtn9yb79g/image/upload/v1601061045/Prancha_-_StandUp_Pedal_zvzflk.jpg')
product10.photo.attach(io: file10, filename: 'Prancha_-_StandUp_Pedal.jpg', content_type: 'image/jpg')

puts "... saving to database ..."

product1.save!
product2.save!
product3.save!
product4.save!
product5.save!
product6.save!
product7.save!
product8.save!
product9.save!
product10.save!

puts "... 10 products created"

puts "... creating 5 rentals and assigning their products and customers"

rental1 = Rental.new(
  begin_date: Date.strptime('02/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('12/09/2020', '%d/%m/%Y'),
  rental_price: 13000,
  costumer_review: 'Bike muito leve e bem regulada. Foi bem divertido poder treinar em Brasília na minha viagem de negócios. Recomendo o produto.',
  renter_review: 'Usuário sem zelo. Devolveu o equipamento todo sujo.',
  )
rental1.product_id = product1.id
rental1.user_id = user3.id

rental2 = Rental.new(
  begin_date: Date.strptime('12/06/2020', '%d/%m/%Y'),
  end_date: Date.strptime('14/06/2020', '%d/%m/%Y'),
  rental_price: 19000,
  costumer_review: 'Aluguei o equipamento, mas não consegui usar de fato, mas parecia tudo em ordem.',
  renter_review: 'O usuário é nota 10. Devolveu o equipamento em perfeitas condições.',
  )
rental2.product_id = product4.id
rental2.user_id = user4.id

rental3 = Rental.new(
  begin_date: Date.strptime('25/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('28/09/2020', '%d/%m/%Y'),
  rental_price: 5000,
  costumer_review: '',
  renter_review: '',
  )
rental3.product_id = product5.id
rental3.user_id = user5.id

rental4 = Rental.new(
  begin_date: Date.strptime('20/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('22/09/2020', '%d/%m/%Y'),
  rental_price: 3500,
  costumer_review: 'Muito boas as raquetes. E o preço está muito barato!',
  renter_review: 'Está mesmo muito barato! Vou subir um pouco o preço.',
  )
rental4.product_id = product3.id
rental4.user_id = user6.id

rental5 = Rental.new(
  begin_date: Date.strptime('23/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('30/09/2020', '%d/%m/%Y'),
  rental_price: 3500,
  costumer_review: '',
  renter_review: '',
  )
rental5.product_id = product10.id
rental5.user_id = user1.id

rental6 = Rental.new(
  begin_date: Date.strptime('20/09/2020', '%d/%m/%Y'),
  end_date: Date.strptime('22/09/2020', '%d/%m/%Y'),
  rental_price: 3500,
  costumer_review: 'O kaiak estava em ordem e bem higienizado. Nota 10!',
  renter_review: 'Cliente cuidadoso e educado. Indico a todos.',
  )
rental6.product_id = product6.id
rental6.user_id = user2.id

puts "... saving to database ..."

rental1.save(validate: false)
rental2.save(validate: false)
rental3.save(validate: false)
rental4.save(validate: false)
rental5.save(validate: false)
rental6.save(validate: false)

puts "... 6 rentals created"

puts "Seeding is done!"
