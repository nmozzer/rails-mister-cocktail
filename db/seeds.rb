require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
file = JSON.load(open(url))

file["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end
