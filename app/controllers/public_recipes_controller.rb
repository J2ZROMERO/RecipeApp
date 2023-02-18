class PublicRecipesController < ActionController::Base
  layout 'application'
  def index
    @style = 'public_recipes/index'
      @public_recipes = Recipe.all
      @recipes_foods = RecipeFood.all
      @foodie = RecipeFood.all
    end
  
    
end
