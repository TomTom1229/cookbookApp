class WelcomeController < ApplicationController
  
  def index
    @recipes = Recipe.order("views desc").page(params[:page])
    @joke = Joke.find(:one, from: :random)
    respond_to do |format|
        format.html
    end
  end
end