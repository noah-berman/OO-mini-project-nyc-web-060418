class User

attr_accessor :name
@@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def recipe_cards
    RecipeCard.all.select do |recipecard_instance|
      recipecard_instance.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(recipe_instance, rating)
    new_card = RecipeCard.new(self, recipe_instance, rating)
    new_card
  end

  def top_three_recipes
    rated_recipes = self.recipe_cards.sort_by do |recipecard|
      recipecard.rating
    end
    if rated_recipes.length < 3
      rated_recipes
    else
      rated_recipes[-3, 3]
    end
  end

  def most_recent_recipe
    recent_recipes = recipe_cards.sort_by do |recipecard|
      recipecard.date
    end
    recent_recipes.last
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
    puts "I'm allergic to #{ingredient}!"
  end

end
