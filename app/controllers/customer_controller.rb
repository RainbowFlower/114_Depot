class CustomerController < ApplicationController
  def index
  	@user = User.find_by_id(session[:user_id])
  	@orders = @user.orders
  end

end
