class Recipe < ActiveRecord::Base

  has_attached_file :picture, :default_url => "/images/:style/missing.png" 
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :categories
  has_many :ingredients_recipes
  belongs_to :book
  accepts_nested_attributes_for :ingredients_recipes, :reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :book, :reject_if => lambda { |a| a[:book_id].blank? }, :allow_destroy => false
  has_many :categories_recipes

  attr_accessible :instructions, :name, :book_id,
   :categories_tokens, :ingredients_recipes, :ingredients_recipes_attributes,
   :picture, :description
  attr_reader :categories_tokens

  self.per_page = 9

  def categories_tokens=(ids)
    self.category_ids = ids.split(",")
  end

  def self.search(term)
    Recipe.where(["recipes.name like :term or 
                   recipes.description like :term", { term: "%#{term}%" }])
  end
end
