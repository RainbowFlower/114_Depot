class CustomerController < ApplicationController
  def index
  	@user = User.find_by_id(session[:user_id])
  	@customer_orders = Order.all
  end

end
