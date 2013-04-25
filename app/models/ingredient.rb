class Ingredient < ActiveRecord::Base
  attr_accessible :description, :name

  has_and_belongs_to_many :recipes

  def as_json options={}
    { label: self.name, value: self.id }
  end
end
