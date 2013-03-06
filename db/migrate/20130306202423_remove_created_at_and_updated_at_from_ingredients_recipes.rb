class RemoveCreatedAtAndUpdatedAtFromIngredientsRecipes < ActiveRecord::Migration
  def change
    remove_column :ingredients_recipes, :created_at
    remove_column :ingredients_recipes, :updated_at
  end
end
