class Recipe < ApplicationRecord
    belongs_to :users ,foreign_key: :user_id
    has_many :recipe_foods ,foreign_key: :recipe_id
end
