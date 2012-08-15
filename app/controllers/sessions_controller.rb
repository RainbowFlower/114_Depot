class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
	@cart = current_cart
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      if user.admin == true
      	session[:admin] = user.admin
      	redirect_to admin_url, :notice => "Admin login success"
      else
      	session[:admin] = false
      	redirect_to customer_url
      end
    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:admin] = false
    redirect_to store_url, :notice => "Logged out"
  end

end
