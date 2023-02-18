class PublicRecipesController < ActionController::Base
  layout 'application'
  def index
    @style = 'public_recipes/index'
      @public_recipes = Recipe.all
      @recipes_foods = RecipeFood.all
      @foodie = RecipeFood.all
      @current_user =  current_user
      @idelement = 1
      return unless user_signed_in?

    end
  
    
end
