# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'deep' , email: 'deep1@gmail.com' , password: '123456' , password_confirmation: '123456')
User.create(name: 'far' , email: 'you@gmail.com' , password: '123456' , password_confirmation: '123456')


h1=House.create(title: "Big rom furnished",cost: "50000",location: "U.S",category:"Room")
h2=House.create(title: "Small room",cost: "40100",location: "India",category:"Room")
h3=House.create(title: "Small Semi room",cost: "20100",location: "U.S",category:"Room")
h4=House.create(title: "Medium Size room",cost: "35670",location: "Japan",category:"Room")
h5=House.create(title: "Big room Unfurnished",cost: "31000",location: "U.S",category:"Room")

h4=House.create(title: "Small wood house",cost: "50000",location: "India",category:"House")
h4=House.create(title: "Furnished house",cost: "43000",location: "Japan",category:"House")
h4=House.create(title: "Beach House",cost: "34000",location: "U.S",category:"House")
h4=House.create(title: "Villa for Rest",cost: "23000",location: "Japan",category:"House")
h4=House.create(title: "Join Home Club",cost: "7800",location: "India",category:"House")

h5=House.create(title: "Apolo 7",cost: "53300",location: "U.S",category:"Apartment")
h5=House.create(title: "Far From Home",cost: "63700",location: "japan",category:"Apartment")
h5=House.create(title: "Near Flat",cost: "34004",location: "U.S",category:"Apartment")
h5=House.create(title: "Bhk Decided",cost: "93006",location: "japan",category:"Apartment")
h5=House.create(title: "Mountain Apart",cost: "35300",location: "India",category:"Apartment")