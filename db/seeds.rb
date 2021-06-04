# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'open-uri'
puts "----- Cleaning Database / Users & Offers -----"

Offer.destroy_all
User.destroy_all

puts "-------- Seeding in process --------"
# Users Seeding
puts "Creating 10 users"

john = User.create(address: '34, boulevard Charles-Livon, Marseille', bio: 'Physically, Andrew is in pretty good shape. He is average-height with chocolate skin, grey hair and black eyes.', email: 'john.cena@gmail.com', password: 'password', name: 'John Cena', age: '25', body_type:'Muscular', height:"1M90")
johnimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622710712/barackobamasosie_ab5jmi.jpg")
john.photo.attach(io: johnimage, filename: 'v1622710712/barackobamasosie_ab5jmi.jpg')

paul = User.create(address: '42, rue des Petites-Maries, Marseille', bio: 'He is German. He finished school and then left academia.', email: 'paul.dupuit@gmail.com', password: 'password', name: 'Paul Dupuit', age: '35', body_type:'Fat', height:'1M79')
paulimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622555994/wdqws8ehto4i9van7uxjeiy3ntxr.jpg")
paul.photo.attach(io: paulimage, filename: 'v1622555994/wdqws8ehto4i9van7uxjeiy3ntxr.jpg')

wolfgang = User.create(address: 'Nasco building, Salahuddin Road, Deira, Dubai', bio:'', email: 'wolfie.gang@gmail.com',password: 'password', name: 'Wolfgang Durch', age: '23', body_type:'Muscular', height:'1M95')
wolfgangimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622710712/edsherranprofile_tqoyki.jpg")
wolfgang.photo.attach(io: wolfgangimage, filename: 'v1622710712/edsherranprofile_tqoyki.jpg')

marie = User.create(address: 'Place de la Loge, 66000 Perpignan', bio: 'best friend is a government politician called Jerry Rose. They have a very firey friendship. They enjoy stealing candy from babies together.', email: 'marie.aliens@gmail.com',password: 'password', name: 'Marie Aliens', age: '80', body_type:'Fit', height:'1M60' )
marieimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630110/w5yucmzgqfha9kthxk4ajopg2ryc.jpg")
marie.photo.attach(io: marieimage, filename: 'v1622630110/w5yucmzgqfha9kthxk4ajopg2ryc.jpg')

sailor = User.create(address: '1 B Hassan Sabri St., Zamalek, Cairo, Egypt', bio: 'She is currently single. Her most recent romance was with an artist called Faith Kenneth Simpson, who was the same age as her. Faith died in 2002.The papers reported the cause of death: boring', email: 'sailor.moon@gmail.com',password: 'password', name: 'Sailor Moon',age: '18', body_type: 'Muscular', height:'1M75')
sailorimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630463/93tmxi7jmqunfupcbhvg9mjc4yqw.jpg")
sailor.photo.attach(io: sailorimage, filename: 'v1622630463/93tmxi7jmqunfupcbhvg9mjc4yqw.jpg')

james = User.create(address: 'Observatoire Océanologique de, Avenue Pierre Fabre, 66650 Banyuls-sur-Mer', bio:'', email: 'james.bond@gmail.com', password: 'password', name: 'James Bond',age: '45', body_type:'SEX SYMBOL', height:'1M83')
jamesimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622629816/vw0k0fhmh4upihv14uv996a5x4wj.jpg")
james.photo.attach(io: jamesimage, filename: 'v1622629816/vw0k0fhmh4upihv14uv996a5x4wj.jpg')

selma = User.create(address: '98 Avenue des Tuileries, Grigny, Paris, France', bio: 'She grew up in an upper class neighbourhood. After her father died when she was young, she was raised by her mother', email: 'selma.sorcer@gmail.com',password: 'password', name: 'Selma Sorcer',age: '37', body_type:'Fit', height:'1M65')
selmaimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622631041/gt2xcn67i0mroxd1rp5ty1o1atjm.jpg")
selma.photo.attach(io: selmaimage, filename: 'v1622631041/gt2xcn67i0mroxd1rp5ty1o1atjm.jpg')

adele = User.create(address: '128 Rue LA BOETIE, 75008 PARIS 8, France', bio: 'She is an American Hindu. She started studying philosophy, politics and economics at college but never finished the course. She is obsessed with Donald Trump.', email: 'adele.voice@gmail.com',password: 'password', name: 'Adele Voice',age: '34', body_type:'Fat', height:'1M69')
adeleimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630876/aomionaqlc75odbymxi906dptt56.jpg")
adele.photo.attach(io: adeleimage, filename: 'v1622630876/aomionaqlc75odbymxi906dptt56.jpg')

freebritney = User.create(address: '72 Square de la Couronne, Pantin, France', bio: 'Physically, Jessica is in pretty good shape. She is average-height with olive skin, black hair and black eyes. She has a tattoo of Donald Trump on her left shoulder.', email: 'free.britney@gmail.com',password: 'password', name: 'Free Britney',age: '29', body_type:'Fit', height:'1M73')
freebritneyimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630282/3d7572733t15hu167607b6uodr88.jpg")
freebritney.photo.attach(io: freebritneyimage, filename: 'v1622630282/3d7572733t15hu167607b6uodr88.jpg')

karl = User.create(address: '4 Montée Saint-Barthélémy, 69005 Lyon', bio:'53-year-old government politician who enjoys theatre, jigsaw puzzles and extreme ironing. She is bright and exciting, but can also be very evil and a bit rude.', email: 'karl.lager@gmail.com',password: 'password', name: 'Karl Lager', age: '54', body_type:'SEX SYMBOL', height:'1M70')
karlimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg")
karl.photo.attach(io: karlimage, filename: 'v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg')

pierrededubai = User.create!(address: '192 place burjkhalifa Dubai', bio:'un barman formidable, un trader hors pair tout simplement un homme incroyable', email: 'pierreaverous42@gmail.com',password: 'password', name: 'Pierre de dubai', age: '25', body_type:'SEX SYMBOLE', height:'1M85')
pierrededubaimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622628942/pk5n4dap7dnsoeed7f3izmfny1jk.png")
pierrededubai.photo.attach(io: pierrededubaimage, filename: 'v1622628942pk5n4dap7dnsoeed7f3izmfny1jk.png')

guillaume = User.create(address: '8 avenue du pardo, 13000 Marseille', bio:'26 ans dev senior a creer google facebook instagram, numero 1 dans tout les domaines', email: 'guillaume@gmail.com',password: 'password', name: 'Guillaume Negro', age: '26', body_type:'SEX SYMBOL', height:'1M75')
guillaumeimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622555994/wdqws8ehto4i9van7uxjeiy3ntxr.jpg")
guillaume.photo.attach(io: guillaumeimage, filename: 'v1622555994/wdqws8ehto4i9van7uxjeiy3ntxr.jpg')

julien = User.create(address: '8 avenue du pardo, 13000 Marseille', bio:'lalalaa', email: 'julienlinzas@gmail.com',password: 'password', name: 'Julien Linzas', age: '26', body_type:'SEX SYMBOL', height:'1M75')
julienimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622803583/ie9utgd01w17ym82okz1v17h6ygb.png")
julien.photo.attach(io: julienimage, filename: 'v1622803583/ie9utgd01w17ym82okz1v17h6ygb.png')


puts "Users creation finished"


# Offers seeding
puts "Creating 9 Offers"

offer1 = Offer.new(title: "Hi my name is Karl", description: "", localisation: '33 Quai des Belges, 13001 Marseille', disponibility: 'Weekend', price: '50')
offer1.user = karl
offer1.save
puts offer1.user.name

offer2 = Offer.new(title: "Hi my name is Selma", description: "", localisation: '3 Rue Alphonse Daudet, 13013 Marseille', disponibility: 'Week', price: '20')
offer2.user = selma
offer2.save
puts offer2.user.name

offer3 = Offer.new(title: "Never mind I find Someone like youuuuuu", description: "", localisation: '1 Rue Méry, 13002 Marseille', disponibility: 'Afterwork', price: '30')
offer3.user = adele
offer3.save
puts offer3.user.name

offer4 = Offer.new(title: "Bribri", description: "Physically, Jessica is in pretty good shape. She is average-height with olive skin, black hair and black eyes. She has a tattoo of Donald Trump on her left shoulder.", localisation: '1 Rue Pleney, 69001 Lyon', disponibility: 'Everyday', price: '15')
offer4.user = freebritney
offer4.save
puts offer4.user.name

offer5 = Offer.new(title: "Hi my name is Marie", description: "Allez l'OM", localisation: 'Chemin de la Carlette, 66000 Perpignan', disponibility: 'Afterwork', price: '45')
offer5.user = marie
offer5.save
puts offer5.user.name

offer6 = Offer.new(title: "Hi my name is wolfgang", description: "This is an amazing description", localisation: 'Plage des Elmes, 66650 Banyuls-sur-Mer', disponibility: 'Weekend', price: '34')
offer6.user = wolfgang
offer6.save
puts offer6.user.name

offer7 = Offer.new(title: "Hi my name is Sailot", description: "Sailor Sailor Sailor lalalalalalala", localisation: '7 Rue de France, 06000 Nice', disponibility: 'Week', price: '15')
offer7.user = sailor
offer7.save
puts offer7.user.name

offer8 = Offer.new(title: "Hi, it's Pierro From Dubai", description: "un barman formidable, un trader hors pair tout simplement un homme incroyable", localisation: '1 Sheikh Mohammed bin Rashid Blvd - Downtown Dubai - Dubai - Émirats arabes unis', disponibility: 'Week', price: '1500000')
offer8.user = pierrededubai
offer8.save
puts offer8.user.name

offer9 = Offer.new(title: "Hello, I am Guillaume", description: "Senior Dev of 26 years. I own multiple company like Google Facebook Instagram. I am also number one in all category. If you have a problem with optionnal exo of le wagon do not hesitates", localisation: 'InterContinental Dubai Marina - Bay Central, Dubai Marina, Jumeirah Beach Residence - Dubai - Émirats Arabes Unis', disponibility: 'Afterwork', price: '30')
offer9.user = guillaume
offer9.save
puts offer9.user.name

offer9 = Offer.new(title: "Hello, I am Julien, The best TA of the world", description: "Hitman by night, TA by day, I think i am the best TA of the world but stephane is against this idea i do not know why", localisation: 'Palm Jumeirah - The Palm Jumeirah - Dubai - Émirats arabes unis', disponibility: 'Afterwork', price: '30')
offer9.user = julien
offer9.save
puts offer9.user.name

puts "Offers creation finished"
