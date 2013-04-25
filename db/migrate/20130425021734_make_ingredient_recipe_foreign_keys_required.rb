class MakeIngredientRecipeForeignKeysRequired < ActiveRecord::Migration
  def change
    change_column :ingredients_recipes, :recipe_id, :integer, null: false
    change_column :ingredients_recipes, :unit_id, :integer, null: false
    change_column :ingredients_recipes, :ingredient_id, :integer, null: false
  end
end
