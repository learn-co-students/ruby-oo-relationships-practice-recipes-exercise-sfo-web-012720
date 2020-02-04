
 
class RecipeIngredient
    @@all = []
 
    def self.all
        @@all
    end
 
    def initialize(recipe, ingredient)
        @@all << self
        @recipe = recipe
        @ingredient = ingredient
    end
 
    def ingredient
        self.all.select {|ing| ing == self.ingredient}
        # RecipeIngredient.include?(Ingredient.all)
    end
 
    def recipe
        self.all.map {|rec| rec.recipe }
    end
end