class SessionsController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :authorize_admin

  def new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  def create
    user = User.where('lower(name) = ?', params[:name]).first
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:admin] = user.admin
      redirect_to user
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end 
  end

  def destroy
    session[:user_id] = nil
    session[:admin] = false
    redirect_to login_url, notice: "Logged out"
  end
end
