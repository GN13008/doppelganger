# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "----- Cleaning Database / Users & Offers -----"

Offer.destroy_all
User.destroy_all

puts "-------- Seeding in process --------"
# Users Seeding
puts "Creating 10 users"

john = User.create(email: 'john.cena@gmail.com', name: 'John Cena', age: '25')


paul = User.create(email: 'paul.dupuit@gmail.com',password: 'password', name: 'Paul Dupuit', age: '35')

wolfgang = User.create(email: 'wolfie.gang@gmail.com',password: 'password', name: 'Wolfgang Durch', age: '23')

marie = User.create(email: 'marie.aliens@gmail.com',password: 'password', name: 'Marie Aliens',age: '80')

sailor = User.create(email: 'sailor.moon@gmail.com',password: 'password', name: 'Sailor Moon',age: '18')

james = User.create(email: 'james.bond@gmail.com', password: 'password', name: 'James Bond',age: '45')

selma = User.create(email: 'selma.sorcer@gmail.com',password: 'password', name: 'Selma Sorcer',age: '37')

adele = User.create(email: 'adele.voice@gmail.com',password: 'password', name: 'Adele Voice',age: '34')

freebritney = User.create(email: 'free.britney@gmail.com',password: 'password', name: 'Free Britney',age: '29')

karl = User.create(email: 'karl.lager@gmail.com',password: 'password', name: 'Karl Lager', age: '54')

puts "Users creation finished"

# Offers seeding
puts "Creating 7 Offers"

offer1 = Offer.new(localisation: 'Paris', disponibility: '20 Juin')
offer1.user = karl
offer1.save
puts offer1.user.name

offer2 = Offer.new(localisation: 'Paris', disponibility: '25 Juin')
offer2.user = selma
offer2.save
puts offer2.user.name

offer3 = Offer.new(localisation: 'Marseille', disponibility: '15 Juin')
offer3.user = adele
offer3.save
puts offer3.user.name

offer4 = Offer.new(localisation: 'Lyon', disponibility: '13 Juin')
offer4.user = freebritney
offer4.save
puts offer4.user.name

offer5 = Offer.new(localisation: 'Perpigna', disponibility: '3 Aout')
offer5.user = marie
offer5.save
puts offer5.user.name

offer6 = Offer.new(localisation: 'Baynuls', disponibility: '5 Septembre')
offer6.user = wolfgang
offer6.save
puts offer6.user.name

offer7 = Offer.new(localisation: 'Nice', disponibility: '8 Aout')
offer7.user = sailor
offer7.save
puts offer7.user.name

puts "Offers creation finished"
