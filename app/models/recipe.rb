class Recipe < ActiveRecord::Base
  attr_accessible :instructions, :name, :book_id, :ingredient_tokens
  attr_reader :ingredient_tokens

  has_and_belongs_to_many :ingredients
  belongs_to :book

  def ingredient_tokens=(ids)
    self.ingredient_ids = ids.split(",")
  end
end
