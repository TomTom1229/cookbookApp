class AddViewsToRecipeTable < ActiveRecord::Migration
  def change
    add_column :recipes, :views, :integer, default: 0, min: 0
  end
end
