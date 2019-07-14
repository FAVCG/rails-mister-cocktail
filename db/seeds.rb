require "open-uri"
require "json"
# crud
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

data = URI.open(url).read
# just to be able to read the list with the ingredients
json = JSON.parse(data)
# u apply this so u can convert the array into a hash


puts "Destroy all ingredients"
Ingredient.destroy_all
# u need to destroy all before u rails db:seed
# or else it will add lets say more ingredients to the one u already had.
puts "Creating Ingredients"

json["drinks"].each do |hash|
  i = Ingredient.create(name: hash["strIngredient1"])
  puts "- created #{i.name}"
end

puts "Finished!"
