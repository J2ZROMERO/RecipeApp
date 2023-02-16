class PublicRecipesController < ActionController::Base
    def index
      @public_recipes = Recipe.all
    end
  
end
