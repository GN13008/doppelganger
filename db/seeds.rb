# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'open-uri'
puts "----- Cleaning Database / Users & Offers -----"

Offer.destroy_all
User.destroy_all

puts "-------- Seeding in process --------"
# Users Seeding
puts "Creating 10 users"

john = User.create(address: '34, boulevard Charles-Livon, Marseille', bio: 'Physically, Andrew is in pretty good shape. He is average-height with chocolate skin, grey hair and black eyes.', email: 'john.cena@gmail.com', password: 'password', name: 'John Cena', age: '25')
johnimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622710712/barackobamasosie_ab5jmi.jpg")
john.photo.attach(io: johnimage, filename: 'v1622710712/barackobamasosie_ab5jmi.jpg')

paul = User.create(address: '42, rue des Petites-Maries, Marseille', bio: 'He is German. He finished school and then left academia.', email: 'paul.dupuit@gmail.com', password: 'password', name: 'Paul Dupuit', age: '35')
paulimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622555994/wdqws8ehto4i9van7uxjeiy3ntxr.jpg")
paul.photo.attach(io: paulimage, filename: 'v1622555994/wdqws8ehto4i9van7uxjeiy3ntxr.jpg')

wolfgang = User.create(address: 'Nasco building, Salahuddin Road, Deira, Dubai', bio:'', email: 'wolfie.gang@gmail.com',password: 'password', name: 'Wolfgang Durch', age: '23')
wolfgangimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622710712/edsherranprofile_tqoyki.jpg")
wolfgang.photo.attach(io: wolfgangimage, filename: 'v1622710712/edsherranprofile_tqoyki.jpg')

marie = User.create(address: 'Place de la Loge, 66000 Perpignan', bio: 'best friend is a government politician called Jerry Rose. They have a very firey friendship. They enjoy stealing candy from babies together.', email: 'marie.aliens@gmail.com',password: 'password', name: 'Marie Aliens',age: '80')
marieimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630110/w5yucmzgqfha9kthxk4ajopg2ryc.jpg")
marie.photo.attach(io: marieimage, filename: 'v1622630110/w5yucmzgqfha9kthxk4ajopg2ryc.jpg')

sailor = User.create(address: '1 B Hassan Sabri St., Zamalek, Cairo, Egypt', bio: 'She is currently single. Her most recent romance was with an artist called Faith Kenneth Simpson, who was the same age as her. Faith died in 2002.The papers reported the cause of death: boring', email: 'sailor.moon@gmail.com',password: 'password', name: 'Sailor Moon',age: '18')
sailorimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630463/93tmxi7jmqunfupcbhvg9mjc4yqw.jpg")
sailor.photo.attach(io: sailorimage, filename: 'v1622630463/93tmxi7jmqunfupcbhvg9mjc4yqw.jpg')

james = User.create(address: 'Observatoire Océanologique de, Avenue Pierre Fabre, 66650 Banyuls-sur-Mer', bio:'', email: 'james.bond@gmail.com', password: 'password', name: 'James Bond',age: '45')
jamesimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622629816/vw0k0fhmh4upihv14uv996a5x4wj.jpg")
james.photo.attach(io: jamesimage, filename: 'v1622629816/vw0k0fhmh4upihv14uv996a5x4wj.jpg')

selma = User.create(address: '98 Avenue des Tuileries, Grigny, Paris, France', bio: 'She grew up in an upper class neighbourhood. After her father died when she was young, she was raised by her mother', email: 'selma.sorcer@gmail.com',password: 'password', name: 'Selma Sorcer',age: '37')
selmaimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622631041/gt2xcn67i0mroxd1rp5ty1o1atjm.jpg")
selma.photo.attach(io: selmaimage, filename: 'v1622631041/gt2xcn67i0mroxd1rp5ty1o1atjm.jpg')

adele = User.create(address: '128 Rue LA BOETIE, 75008 PARIS 8, France', bio: 'She is an American Hindu. She started studying philosophy, politics and economics at college but never finished the course. She is obsessed with Donald Trump.', email: 'adele.voice@gmail.com',password: 'password', name: 'Adele Voice',age: '34')
adeleimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630876/aomionaqlc75odbymxi906dptt56.jpg")
adele.photo.attach(io: adeleimage, filename: 'v1622630876/aomionaqlc75odbymxi906dptt56.jpg')

freebritney = User.create(address: '72 Square de la Couronne, Pantin, France', bio: 'Physically, Jessica is in pretty good shape. She is average-height with olive skin, black hair and black eyes. She has a tattoo of Donald Trump on her left shoulder.', email: 'free.britney@gmail.com',password: 'password', name: 'Free Britney',age: '29')
freebritneyimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630282/3d7572733t15hu167607b6uodr88.jpg")
freebritney.photo.attach(io: freebritneyimage, filename: 'v1622630282/3d7572733t15hu167607b6uodr88.jpg')

karl = User.create(address: '4 Montée Saint-Barthélémy, 69005 Lyon', bio:'53-year-old government politician who enjoys theatre, jigsaw puzzles and extreme ironing. She is bright and exciting, but can also be very evil and a bit rude.', email: 'karl.lager@gmail.com',password: 'password', name: 'Karl Lager', age: '54')
karlimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg")
karl.photo.attach(io: karlimage, filename: 'v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg')

puts "Users creation finished"

# Offers seeding
puts "Creating 7 Offers"

offer1 = Offer.new(localisation: '33 Quai des Belges, 13001 Marseille', disponibility: 'Weekend', price: '50')
offer1.user = karl
offer1.save
puts offer1.user.name

offer2 = Offer.new(localisation: '3 Rue Alphonse Daudet, 13013 Marseille', disponibility: 'Week', price: '20')
offer2.user = selma
offer2.save
puts offer2.user.name

offer3 = Offer.new(localisation: '1 Rue Méry, 13002 Marseille', disponibility: 'Afterwork', price: '30')
offer3.user = adele
offer3.save
puts offer3.user.name

offer4 = Offer.new(localisation: '1 Rue Pleney, 69001 Lyon', disponibility: 'Everyday', price: '15')
offer4.user = freebritney
offer4.save
puts offer4.user.name

offer5 = Offer.new(localisation: 'Chemin de la Carlette, 66000 Perpignan', disponibility: 'Afterwork', price: '45')
offer5.user = marie
offer5.save
puts offer5.user.name

offer6 = Offer.new(localisation: 'Plage des Elmes, 66650 Banyuls-sur-Mer', disponibility: 'Weekend', price: '34')
offer6.user = wolfgang
offer6.save
puts offer6.user.name

offer7 = Offer.new(localisation: '7 Rue de France, 06000 Nice', disponibility: 'Week', price: '15')
offer7.user = sailor
offer7.save
puts offer7.user.name

puts "Offers creation finished"
