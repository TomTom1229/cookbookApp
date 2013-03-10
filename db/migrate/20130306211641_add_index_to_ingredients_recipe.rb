class AddIndexToIngredientsRecipe < ActiveRecord::Migration
  def change
    add_index :ingredients_recipes, [:recipe_id, :ingredient_id], :unique => true, name: "ingredient_recipe_index"
  end
end
