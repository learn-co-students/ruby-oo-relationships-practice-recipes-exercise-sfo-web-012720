class Recipe
    @@all = []
 
    attr_accessor :name, :rating, :date
 
    def initialize(name, rating, date)
        @@all << self
        @name = name
        @rating = rating
        @date = date
    end
 
    def self.all
        @@all
    end
 
    def self.most_popular
        self.all.max_by {|x| self.all.count(x)}
    end
 
    def users
        #users talks to recipe card method to retrieve users  
        RecipeCard.all.select {|user| user.recipe == self}
    end
 
    def ingredients
        RecipeIngredient.all.each do |recipeIng|
            if recipeIng.recipe == self
                recipeIng.ingredient
            end
        end
    end
 
    def allergens
        Allergy.all.select {|allergen| allergen.recipe == self}
    end
 
    def add_ingredients(array)
        array.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end
end
 