class User
    @@all = []
    attr_accessor :name
 
    def initialize(name)
        @@all << self
        @name = name
    end
 
    def self.all
        @@all
    end
 
    def recipes
        RecipeCard.all.select {|recipe| recipe.user == self}
    end
 
    def add_recipe_card(recipe, date, rating)
        # builds new RecipeCard instance
        RecipeCard.date = date
        RecipeCard.rating = rating
        RecipeCard.recipe = recipe
    end
 
    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end
 
    def allergens
        Allergy.all.map do |allergy|
            if allergy.user == self
                allergy.ingredient
            end
        end
    end
 
    def top_three_recipe
        RecipeCard.all.max_by(3){|recipe| recipe.rating}
 
    end
 
    def most_recent_recipe
        RecipeCard.all[-1]
    end
 
end
 
