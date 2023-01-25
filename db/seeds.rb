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
ProjectEnglish.destroy_all

puts 'Seed: Creating Diana...'

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673014746/profile_linkedin_ds-transparent_hdlfmi.png")
diana = Diana.new(address: "06000 Nice, France")
diana.photo.attach(io: file, filename: "profile.png", content_type: "image/png")
diana.save!

puts 'Seed: Diana was born!'

puts 'Seed: Creating projects...'

file1 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673177315/Capture_d_e%CC%81cran_2023-01-05_a%CC%80_18.03.25_vcpe0d.png")
project1 = Project.new(title: "Joana Bossa -Site Vitrine - Bijoux faites à la main", description: "Site Web custom’ pour une merveilleuse créatrice de bijoux - Joana Bossa. C'est mon premier projet réalisé seule. Le site a une partie vitrine pour présenter ses collections et ses tarifs et une partie e-commerce pour pouvoir vendre quelques produits en ligne..(à venir). Rails admin a été intégré pour faciliter la gestion pour ma cliente, le formulaire de contact permet de rester en contact avec les clients, c'est un bon outil de marketing qui dynamise l'activité autour de la marque.", link: "https://www.joanabossajewelry.com/")
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

file4 = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1674641912/evgenia-manolova_hkaweq.png")
project4 = Project.new(title: "Portfolio Evgenia Manolova", description: "Ce site web portfolio est 100% custom design que nous avons imaginé avec ma cliente  from scratch  et que j'ai codé à l'aide du framework Ruby on Rails 7. Responsive, sécurisé et évolutif, c'est un excellent moyen de promouvoir sa marque professionnelle.", link: "https://www.evgenia-manolova.com/")
project4.photo.attach(io: file4, filename: "evgenia-manolova.png", content_type: "image/png")
project4.save!

puts 'Seed: Projects created...'
puts 'Seed: Creating Projects in English ...'

file_one = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673177315/Capture_d_e%CC%81cran_2023-01-05_a%CC%80_18.03.25_vcpe0d.png")
project_one = ProjectEnglish.new(title: "Joana Bossa - Handmade Jewelry(showcase website)", description: "Custom website for a wonderful jewelry creator - Joana Bossa. This is my first project completed alone. The website has a showcase section to present her collections and prices and an e-commerce section to be able to sell some products online (coming soon). Rails admin was integrated to make management easier for my client, the contact form allows staying in touch with customers, it's a good marketing tool that boosts activity around the brand.", link: "https://www.joanabossajewelry.com/")
project_one.photo.attach(io: file_one, filename: "joanabossa.png", content_type: "image/png")
project_one.save!

file_two = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673177783/my-invest-cryptos_dktzn5.png")
project_two = ProjectEnglish.new(title: "Track Easily your assets with My Invest!", description: "My Invest is a management tool that allows you to control and group your investments: crypto, real estate, bank accounts, custom investments, as well as your credits. With my two colleagues Kevin and Teddy, we imagined an interactive dashboard that groups all of the user's liabilities and assets for a clear overview. We were able to integrate 2 APIs (on real estate square meter prices) and on crypto which were available for free, but we don't plan on stopping there! The application has a lot of potential, and we will continue to develop it by attracting potential investors.", link: "http://www.myinvest.shop/")
project_two.photo.attach(io: file_two, filename: "myinvest.png", content_type: "image/png")
project_two.save!

file_three = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1673193449/Capture_decran_2022-12-14_a_18.59.46_o9uagm.png")
project_three = ProjectEnglish.new(title: "Botloc - find the perfect robot!", description: "Botloc is a web app for renting robots, similar to the Airbnb app created with two of my colleagues from The Wagon. In just 5 days, we coded the complete website with a reservation calendar, an interactive map, a home page, a search form, a results page, and a booking form that calculates the total price of the rental. Unfortunately, the website is no longer online, but several screenshots are available, and it will be kept locally as a precious memory, as it was our first website put into production.", link: "#")
project_three.photo.attach(io: file_three, filename: "botloc.png", content_type: "image/png")
project_three.save!

file_four = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1674641912/evgenia-manolova_hkaweq.png")
project_four = ProjectEnglish.new(title: "Portfolio Evgenia Manolova", description: "This portfolio website is 100% custom designed. We have imagined everything from scratch with my client, and I coded using the Ruby on Rails 7 framework. The portfolio is responsive, secure and scalable, it is an excellent way to promote a professional brand.", link: "https://www.evgenia-manolova.com/")
project_four.photo.attach(io: file_four, filename: "evgenia-manolova.png", content_type: "image/png")
project_four.save!

puts 'Seed: Projects in English created...'
puts 'Seed: Finished seeding!'
