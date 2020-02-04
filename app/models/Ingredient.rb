
class Ingredient
    @@all = []
    attr_accessor :name
 
    def initialize(name)
        @@all << self
        @name = name
    end
 
    def self.all
        @@all
    end
 
    def self.most_common_allergen
        Allergy.all.max_by{|allergy| Allergy.all.count(allergy)}
    end
end