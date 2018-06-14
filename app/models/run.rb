require 'pry'

require_relative 'Allergen'
require_relative 'Ingredient'
require_relative 'Recipe'
require_relative 'RecipeCard'
require_relative 'RecipeIngredient'
require_relative 'User'

noah = User.new("Noah")
jarret = User.new("Jarret")
eliza = User.new("Eliza")
michael = User.new("Michael")
barack_obama = User.new("Barack Obama")

chicken_soup = Recipe.new("Chicken Soup")
pudding = Recipe.new("Pudding")
burger = Recipe.new("Burger")
chicken_parmesan = Recipe.new("Chicken Parmesan")
caesar_salad = Recipe.new("Caesar Salad")
tomato_soup = Recipe.new("Tomato Soup")
jerk_chicken = Recipe.new("Jerk Chicken")
ice_cream = Recipe.new("Ice Cream")
gatorade = Recipe.new("Gatorade")


cs_noah_recipe = RecipeCard.new(noah, chicken_soup, 6)
pudd_jarret_recipe = RecipeCard.new(jarret, pudding, 3)
burger_jarret_recipe = RecipeCard.new(jarret, burger, 10)
caesar_michael_recipe = RecipeCard.new(michael, caesar_salad, 2)
gatorade_noah_recipe = RecipeCard.new(noah, gatorade, 1)
jerkchick_noah_recipe = RecipeCard.new(noah, jerk_chicken, 9)
parm_eliza_recipe = RecipeCard.new(eliza, chicken_parmesan, 8)

tomato = Ingredient.new("Tomato")
sugar = Ingredient.new("Sugar")
chicken = Ingredient.new("Chicken")
milk = Ingredient.new("Milk")

water = Ingredient.new("Water")

tomato_soup_water_relationship = RecipeIngredient.new(tomato_soup, water)
binding.pry
gatorade_water_relationship = RecipeIngredient.new(gatorade, water)
