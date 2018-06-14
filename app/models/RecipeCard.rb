class RecipeCard

attr_accessor :card_name, :user, :recipe, :rating
attr_reader :date
@@all = []

  def self.all
    @@all
  end

  def initialize(user, recipe, rating = nil)
    @user = user
    @recipe = recipe
    @date = Time.now.strftime("%m/%d/%Y")
    self.class.all << self
  end

end
