# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Unit.delete_all
units = Unit.create([
  { name: "cup", short_name: "c" },
  { name: "tablespoon", short_name: "tbsp", conversion: 0.0625 },
  { name: "teaspoon", short_name: "tsp", conversion: 0.0208 },
  { name: "quart", short_name: "qt", conversion: 4 },
  { name: "pint", short_name: "pt", conversion: 2},
  { name: "gallon", short_name: "gal", conversion: 16},
  { name: "ounce", short_name: "oz", unit_type: "Weight", conversion: 0.0625 },
  { name: "pound", short_name: "lb", unit_type: "Weight"},
  { name: "gram", short_name: "g", unit_type: "Weight", conversion: 0.0022 }
  ])