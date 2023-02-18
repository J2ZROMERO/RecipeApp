class Food < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :recipe_foods, foreign_key: 'food_id'
  

  validates :name, length: { maximum: 80 }, presence: true
  validates :price, presence: true
end
