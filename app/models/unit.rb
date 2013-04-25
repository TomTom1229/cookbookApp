class Unit < ActiveRecord::Base
  attr_accessible :conversion, :name, :short_name, :unit_type

  def as_json options={}
    { label: self.name, value: self.id }
  end
end
