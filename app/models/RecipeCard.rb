
class RecipeCard
    @@all = []
    attr_accessor :recipe, :user, :date, :rating
 
    def initialize(recipe, user, date, rating)
        @@all << self
        @recipe = recipe
        @user = user
        @date = date
        @rating = rating
    end
   
    def self.all
        @@all
    end
 
    def date
        @date
    end
 
    def rating
        @rating
    end
 
    def user
        @user
    end
 
    def recipe
        @recipe
    end
end