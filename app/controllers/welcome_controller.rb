class WelcomeController < ApplicationController
  
  def index
    @recipes = Recipe.order("views desc")
    respond_to do |format|
        format.html
    end
  end
end