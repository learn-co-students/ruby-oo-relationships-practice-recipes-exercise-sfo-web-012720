class Recipe
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def find_recipe_card
        RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
    end

    def users
        find_recipe_card.map {|recipe_card| recipe_card.user}
    end

    def add_ingredients(ingredients)
        RecipeIngredient.new(self, ingredients)
    end

    def self.most_popular
        self.all.max_by { | recipe | recipe.users.length }
    end

    def ingredients
        RecipeIngredient.all.find {|recipe_ingredient| recipe_ingredient.recipe == self}.ingredient
    end

    # def ingredients 
    #     recipe_ingredient.ingredient
    # end

    def allergens
        ingredients & Allergy.ingredients        
    end
end