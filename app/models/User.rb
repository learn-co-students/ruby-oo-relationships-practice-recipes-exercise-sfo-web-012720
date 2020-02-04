class User
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select { |recipe_card| recipe_card.user == self}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end
        
    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select {|allergen| allergen.user == self}
    end

    def top_three_recipes
        recipes.max_by(3) {| recipe | recipe.rating }
    end

    def most_recent_recipe
        recipes.max_by { |recipe| recipe.date }
    end

end