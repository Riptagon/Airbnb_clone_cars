# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

car = Car.create(brand: "Ferrari", model: "488 Pista", color: "red", kilometers: rand(100...100_000), year: rand(2015...2_022), fuel_consumption: 15, price: 1_000, hp: 720)
car = Car.create(brand: "Ferrai", model: "812 GTS", color: ["red", "green", "blue", "black", "yellow", "grey"].sample, kilometers: rand(100...100_000), year: rand(2015...2_022), fuel_consumption: 15 , price: 1_000, hp: 800)
car = Car.create(brand: "Ferrai", model: "SF90 Stradale", color: ["red", "green", "blue", "black", "yellow", "grey"].sample, kilometers: rand(100...100_000), year: rand(2015...2_022), fuel_consumption: 12, price: 1_000, hp: 1000)
car = Car.create(brand: "BMW", model: "M4 CSL", color: "Grey", kilometers: 15.000, year: 2022, fuel_consumption: 10.1, price: 950, hp: 550)
