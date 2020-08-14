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

Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')
