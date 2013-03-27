class Recipe < ActiveRecord::Base
  has_attached_file :picture, :default_url => "/images/:style/missing.png" 
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :categories
  has_many :ingredients_recipes
  accepts_nested_attributes_for :ingredients_recipes, :reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true
  has_many :categories_recipes
  belongs_to :book

  attr_accessible :instructions, :name, :book_id,
   :categories_tokens, :ingredients_recipes, :ingredients_recipes_attributes,
   :picture, :description
  attr_reader :categories_tokens

  def categories_tokens=(ids)
    self.category_ids = ids.split(",")
  end
end
