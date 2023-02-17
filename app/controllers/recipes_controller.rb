class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]
  before_action :authenticate_user!

  
  layout 'application'
  # GET /recipes or /recipes.json
  def index
     return unless user_signed_in?

     @current_user = current_user
    @recipes = Recipe.where(user_id: current_user.id)
  end

  # GET /recipes/1 or /recipes/1.json
  def show
    @activo = params[:activo] == 'true' 
    @foods = Food.all
    @recipe = Recipe.find(params[:id])
    @recipe_food = RecipeFood.where(recipe_id: params[:id])

    render partial: 'recipe_custom', locals: {recipe: @recipe} 
end

def add_ingredient
  
  
  redirect_to action: "show", activo: 'true'
  
  
end

def add_ingredient_alone
  
  RecipeFood.create(quantity: '1.5', recipe_id: params[:recipe_id], food_id: params[:id])
  
  redirect_to action: "show", id: params[:recipe_id], activo: 'true'
  
end



def general_shoping_list
@recipe_food = RecipeFood.where(recipe_id: params[:id])
@suma = 0 

  render "recipes/shoping_list"

end


def modify 
  @recipefood = RecipeFood.new
  @recipeid = params[:recipe_id]
  @recipe_id = RecipeFood.find_by(id: params[:id])
  render "recipes/_edit_ingredient"

end

def modify_ingredient
  
  @recipefood = RecipeFood.find_by(id: params[:id])

  
  
  if @recipefood
    @recipefood.update(quantity: params[:recipe_food][:quantity])
    redirect_to recipe_path(params[:recipeid])
  else

  end
  
  
  
end



def delete_ingredient
RecipeFood.find(params[:id]).destroy
  redirect_to action: "show", id: params[:recipe_id], activo: 'true'
end

# GET /recipes/new
def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit; end

  # POST /recipes or /recipes.json
  def create
    return unless user_signed_in?

    @current_user = current_user

    @recipe = Recipe.new(recipe_params.merge(user_id: @current_user.id))

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1 or /recipes/1.json
  def update
    # respond_to do |format|
    #   if @recipe.update(recipe_params)
    #     format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @recipe }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @recipe.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



def cancel
  redirect_to action: "show"
end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
