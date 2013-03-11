class CreateCategoriesRecipes < ActiveRecord::Migration
  def change
    create_table :categories_recipes do |t|
      t.integer :category_id
      t.integer :recipe_id
    end

    add_index :categories_recipes, [:recipe_id, :category_id], :unique => true, :name => "category_join_index"
  end
end
