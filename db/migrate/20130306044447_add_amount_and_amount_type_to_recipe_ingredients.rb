class AddAmountAndAmountTypeToRecipeIngredients < ActiveRecord::Migration
  def change
    add_column :recipe_ingredients, :amount, :decimal
    add_column :recipe_ingredients, :amount_type, :text
  end
end
