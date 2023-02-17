class PublicRecipesController < ActionController::Base
  before_action :authenticate_user!
  layout 'application'  
  def index
      @public_recipes = Recipe.all
      @recipes_foods = RecipeFood.all
      @foodie = RecipeFood.all
      @current_user =  current_user
      return unless user_signed_in?

    end
  
    
end
