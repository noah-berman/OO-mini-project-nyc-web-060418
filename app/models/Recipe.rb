require 'pry'

class Recipe

attr_accessor :recipe_name
@@all = []

  def self.all
    @@all
  end

  def initialize(recipe_name)
    @recipe_name = recipe_name
    self.class.all << self
  end

  def ingredient_helper
    array = RecipeIngredient.all.select do |instance|
      instance.recipe == self
    end
  end

  def ingredients
    self.ingredient_helper.map do |recipe_ingredient_instance|
      recipe_ingredient_instance.ingredient
    end
  end

  def allergens

    new_array = Allergen.all.map do |allergen|
      allergen.ingredient
    end
    new_array.uniq & self.ingredients
  end


end
