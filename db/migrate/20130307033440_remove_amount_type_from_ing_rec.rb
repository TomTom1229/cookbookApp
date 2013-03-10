class RemoveAmountTypeFromIngRec < ActiveRecord::Migration
  def change
    remove_column :ingredients_recipes, :amount_type
  end
end
