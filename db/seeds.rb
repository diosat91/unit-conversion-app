# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Dimension.destroy_all
Unit.destroy_all
Conversion.destroy_all

mass = Dimension.create(name: "Mass")
length = Dimension.create(name: "Length")
puts "Dimensions created 🏋🏽‍♀️🏎"

pound = Unit.create(name: "Pound", abbreviation: "lb", dimension: mass)
kilogram = Unit.create(name: "Kilogram", abbreviation: "kg", dimension: mass)
kilometre = Unit.create(name: "Kilometre", abbreviation: "km", dimension: length)
mile = Unit.create(name: "Mile", abbreviation: "mi", dimension: length)
puts "Units created 📏📐⚖️"

Conversion.create(dimension: mass, source_unit: pound, target_unit: kilogram, factor: 0.453592)
Conversion.create(dimension: mass, source_unit: kilogram, target_unit: pound, factor: 2.20462)
Conversion.create(dimension: length, source_unit: kilometre, target_unit: mile, factor: 0.621371)
Conversion.create(dimension: length, source_unit: mile, target_unit: kilometre, factor: 1.60934)
puts "Conversions created 📈📉"