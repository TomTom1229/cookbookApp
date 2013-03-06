class Book < ActiveRecord::Base
  attr_accessible :author, :description, :isbn, :name

  has_many :recipes
end
