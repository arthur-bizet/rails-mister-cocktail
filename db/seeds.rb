require "faker"
puts "Cleaning database..."
Cocktail.destroy_all
puts "Creating some cocktails..."
10.times do
  cocktail = Cocktail.create(
    name: Faker::FunnyName.two_word_name
    )
  puts "Cocktail with id #{cocktail.id} was created"
end
puts "Created #{Cocktail.count} cocktails"

Ingredient.destroy_all
puts "Creating some ingredients..."
11.times do
  ingredient = Ingredient.create(
    name: ["strawberry", "whiskey", "gin", "mint", "ice", "coffee liquor", "aperol", "lemonade", "coke", "cucumber", "vodka", "ginger ale"].sample
    )
  puts "Ingredient with id #{ingredient.id} was created"
end
puts "Created #{Ingredient.count} ingredients"
