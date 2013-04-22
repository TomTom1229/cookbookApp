class IngredientsRecipesController < ApplicationController
  
  # GET /ingredients_recipes.json
  def index
    @ingredients_recipes = Ingredient_Recipes.where("ingredient.name like ?", "%#{params[:q]}%")

    respond_to do |format|
      format.json {
        render json: @ingredients_recipes.map(&:attributes) 
      }
    end
  end
end