class PublicRecipesController < ActionController::Base
  before_action :authenticate_user!

  
  def index
      @public_recipes = Recipe.all
      @recipes_foods = RecipeFood.all
      @foodie = RecipeFood.all
      @current_user =  current_user
      return unless user_signed_in?

    end
  
    
end
