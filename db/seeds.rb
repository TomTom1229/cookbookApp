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

20.times do |i|
  Recipe.create({ name: "test #{i}", description: "test description #{i}"})
end