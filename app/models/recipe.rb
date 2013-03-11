class Recipe < ActiveRecord::Base
  has_many :ingredients_recipes
  has_many :categories_recipes
  accepts_nested_attributes_for :ingredients_recipes, :reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :categories
  belongs_to :book

  attr_accessible :instructions, :name, :book_id, :categories_recipe_tokens, :ingredients_recipes, :ingredients_recipes_attributes
  attr_reader :categories_tokens

  def categories_tokens=(ids)
    self.categories_ids = ids.split(",")
  end
end
