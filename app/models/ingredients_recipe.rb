class IngredientsRecipe < ActiveRecord::Base
  attr_accessible :ingredient_id, :recipe_id, :unit_id, :amount

  belongs_to :ingredients
  belongs_to :recipes
  belongs_to :unit
end
