require_relative '../config/environment.rb'

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")
recipe4 = Recipe.new("recipe4")
recipe5 = Recipe.new("recipe5")

user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")
user4 = User.new("user4")
user5 = User.new("user5")
user6 = User.new("user6")

# recipe_card_1 = RecipeCard.new(user1, recipe1)
# recipe_card_2 = RecipeCard.new(user1, recipe2)
# recipe_card_3 = RecipeCard.new(user2, recipe2)
# recipe_card_4 = RecipeCard.new(user3, recipe2)
# recipe_card_5 = RecipeCard.new(user4, recipe2)
# recipe_card_6 = RecipeCard.new(user5, recipe2)

user1.add_recipe_card(recipe2, 2020, 4)
user2.add_recipe_card(recipe2, 2018, 4)
user1.add_recipe_card(recipe1, 2019, 5)
user3.add_recipe_card(recipe2, 2019, 4)
user1.add_recipe_card(recipe3, 2015, 3)
user1.add_recipe_card(recipe4, 2008, 2)
user1.add_recipe_card(recipe5, 2008, 2)
user2.add_recipe_card(recipe5, 2007, 4)



sugar = Ingredient.new("sugar")
milk = Ingredient.new("milk")
egg = Ingredient.new("egg")
flour = Ingredient.new("flour")
cream = Ingredient.new("cream")

user1.declare_allergy(milk)
user3.declare_allergy(sugar)
user4.declare_allergy(egg)
user2.declare_allergy(egg)
user5.declare_allergy(egg)
user6.declare_allergy(egg)

recipe1.add_ingredients([sugar, milk, egg])
recipe2.add_ingredients([egg, milk])
recipe3.add_ingredients([flour, milk, egg])
recipe4.add_ingredients([cream, milk, flour])
recipe5.add_ingredients([flour, milk])


binding.pry
