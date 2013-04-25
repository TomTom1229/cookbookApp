class IngredientsRecipe < ActiveRecord::Base
  attr_accessible :ingredient_id, :recipe_id, :unit_id, :amount, :ingredient_attribute, :ingredient,
    :unit_attribute, :unit

  belongs_to :ingredient
  belongs_to :recipe
  belongs_to :unit

  accepts_nested_attributes_for :ingredient, :reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => false
  accepts_nested_attributes_for :unit, :reject_if => lambda { |a| a[:unit_id].blank? }, :allow_destroy => false

end
