# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts 'Seed: Deleting existing files...'

Diana.destroy_all
Project.destroy_all
# Project.destroy_all

puts 'Seed: Creating Diana...'

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673014746/profile_linkedin_ds-transparent_hdlfmi.png")
diana = Diana.new(address: "06000 Nice, France")
diana.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
diana.save!

puts 'Seed: Diana was born!'

puts 'Seed: Creating projects...'

file1 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673177315/Capture_d_e%CC%81cran_2023-01-05_a%CC%80_18.03.25_vcpe0d.png")
project1 = Project.new(title: "Joana Bossa jewerly store", description: "Site Web custom’ pour une créatrice de bijoux ayant une partie vitrine pour présenter ses collections et ses tarifs et une partie e-commerce pour pouvoir vendre quelques produits en ligne..(à venir)", link: "https://joanabossajewelry.herokuapp.com/")
project1.photo.attach(io: file1, filename: "joanabossa.png", content_type: "image/png")
project1.save!

file2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673177783/my-invest-cryptos_dktzn5.png")
project2 = Project.new(title: "My Invest", description: "My invest est un outil d'investissement qui permet de regrouper vos differents investisseents", link: "http://www.myinvest.shop/")
project2.photo.attach(io: file2, filename: "myinvest.png", content_type: "image/png")
project2.save!

file3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673193449/Capture_decran_2022-12-14_a_18.59.46_o9uagm.png")
project3 = Project.new(title: "Bot Loc", description: "Clone d'airbnb realisé pendant le wagon en uniqment b5 jours", link: "#")
project3.photo.attach(io: file3, filename: "botloc.png", content_type: "image/png")
project3.save!

puts 'Seed: Projects created...'


puts 'Seed: Finished seeding!'
