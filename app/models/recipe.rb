class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :recipe_foods, foreign_key: :recipe_id

  validates :name, length: { maximum: 100 }, presence: true
  validates :public, presence: true
end
