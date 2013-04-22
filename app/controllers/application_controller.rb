class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end

    def authorize_admin
      unless session[:admin]
        redirect_to url_for(:action => 'index', :controller => 'welcome'), notice: "You must be an admin for that"
      end
    end
end
