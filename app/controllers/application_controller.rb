class ApplicationController < ActionController::Base
  before_filter :set_i18n_locale_from_params
  before_filter :authorize
    
  protect_from_forgery

  private
  
  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, :notice => "Please log in"
      end
    end

  protected
  	def admin_authorize
			unless session[:admin]
				redirect_to request.referer, :notice => "Only admin can do this."
			end
  	end
  		
  protected
    def item_in_cart
      if params[:id]
        item = LineItem.find(params[:id])
        unless item.cart == current_cart
          redirect_to request.referer, :notice => "can not do this."
        end
      end
    end
  
	protected
	def set_i18n_locale_from_params
   	if params[:locale]
    	if I18n.available_locales.include?(params[:locale].to_sym)
      	I18n.locale = params[:locale]
     	else
       	flash.now[:notice] = "#{params[:locale]} translation not available"
       	logger.error flash.now[:notice]
      end
    end
	end
 
	def default_url_options
	 { :locale => I18n.locale }
	end 
  
  def ptitles
    titles = []
    for pcategory in Pcategory.all
      titles << pcategory.title
    end
    return titles
  end
  
  def ctitles
    titles = []
    for ccategory in Ccategory.all
      titles << ccategory.title
    end
    return titles
  end 
  
end
