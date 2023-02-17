class PublicRecipesController < ActionController::Base
    def index
      @public_recipes = Recipe.all
      @recipes_foods = RecipeFood.all
      @foodie = Food.all
      
    end
  
    
end
