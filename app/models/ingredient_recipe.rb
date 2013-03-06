class IngredientsRecipe < ActiveRecord::Base
  attr_accessible :ingredient_id, :recipe_id

  belongs_to :ingredients
  belongs_to :recipes
end
