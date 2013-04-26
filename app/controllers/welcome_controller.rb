class WelcomeController < ApplicationController
  
  def index
    @recipes = Recipe.order("views desc").page(params[:page])
    respond_to do |format|
        format.html
    end
  end
end