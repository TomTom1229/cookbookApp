class WelcomeController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :authorize_admin
  
  def index
    respond_to do |format|
        format.html
    end
  end
end