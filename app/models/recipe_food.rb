class RecipeFood < ApplicationRecord
  belongs_to :foods, foreign_key: :food_id
  belongs_to :recipes, foreign_key: :recipe_id
end
