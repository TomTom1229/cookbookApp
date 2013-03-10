class Recipe < ActiveRecord::Base
  has_many :ingredients_recipes
  accepts_nested_attributes_for :ingredients_recipes, :reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true
  has_and_belongs_to_many :ingredients
  belongs_to :book

  attr_accessible :instructions, :name, :book_id, :ingredients_recipe_tokens, :ingredients_recipes, :ingredients_recipes_attributes
  attr_reader :ingredients_recipe_tokens

  def ingredients_recipe_tokens=(ids)
    self.ingredients_recipe_ids = ids.split(",")
  end
end
