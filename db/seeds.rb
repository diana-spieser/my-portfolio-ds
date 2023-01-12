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
project1 = Project.new(title: "Joana Bossa -Site Vitrine - Bijoux faites à la main", description: "Site Web custom’ pour une merveilleuse créatrice de bijoux - Joana Bossa. C'est mon premier projet réalisé seule. Le site a une partie vitrine pour présenter ses collections et ses tarifs et une partie e-commerce pour pouvoir vendre quelques produits en ligne..(à venir). Rails admin a été intégré pour faciliter la gestion pour ma cliente, le formulaire de contact permet de rester en contact avec les clients, c'est un bon outil de marketing qui dynamise l'activité autour de la marque.", link: "https://joanabossajewelry.herokuapp.com/")
project1.photo.attach(io: file1, filename: "joanabossa.png", content_type: "image/png")
project1.save!

file2 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673177783/my-invest-cryptos_dktzn5.png")
project2 = Project.new(title: "Suivez facilement votre patrimoine avec My Invest!", description: "My invest est un outil de gestion qui permet de piloter et regrouper vos investissements: crypto, immobilier, comptes en banque, custom invest mais aussi vos crédits. Avec mes deux collègues Kevin et Teddy nous avons imaginé un dashboard interactif qui regroupe l'ensemble des passifs et actifs de l'utilisateur pour avoir une vision claire. Nous avons réussi à intégrer 2 API's ( sur le prix au m2 de immobilier) et sur la crypto qui étaient disponible gratuitement mais nous comptons pas à nous arrêter là ! L'application a beaucoup de potentiel et nous allons continuer à la developper en attirant des investisseurs potentiels.", link: "http://www.myinvest.shop/")
project2.photo.attach(io: file2, filename: "myinvest.png", content_type: "image/png")
project2.save!

file3 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673193449/Capture_decran_2022-12-14_a_18.59.46_o9uagm.png")
project3 = Project.new(title: "Botloc - trouvez le Robot parfait!", description: "Botloc est une web app de location de robots, le clone de l'application Airbnb crée avec deux de mes collègues du Wagon. En seulement 5 jours nous avons codé le site complet avec son  calendrier de réservation, une map interactive, page d'accueil, formulaire de recherche, page de résultats, formulaire de réservation qui calcule le prix total de la location. Ce site n'est malheureusement plus en ligne mais plusieurs captures d'écran sont disponibles et il sera gardée en local précieusement car c'est le premier site mis en production. ", link: "#")
project3.photo.attach(io: file3, filename: "botloc.png", content_type: "image/png")
project3.save!

puts 'Seed: Projects created...'


puts 'Seed: Finished seeding!'
