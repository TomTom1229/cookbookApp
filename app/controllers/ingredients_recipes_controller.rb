class IngredientsRecipesController < ApplicationController
  skip_before_filter :authorize_admin
  skip_before_filter :authorize
  
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