class RenameIngredientRecipeJoinTable < ActiveRecord::Migration
  def change
    rename_table :recipe_ingredients, :ingredients_recipes
  end
end
