class Book < ActiveRecord::Base
  attr_accessible :author, :description, :isbn, :name

  has_many :recipes

  def as_json options={}
    { label: self.name, value: self.id }
  end
end
