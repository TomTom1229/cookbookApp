class Recipe < ActiveRecord::Base
  attr_accessible :instructions, :name

  has_many :ingredients
  belongs_to :books
end
