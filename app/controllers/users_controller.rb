class UsersController < ApplicationController
	skip_before_filter :authorize, :only => [:register, :create]
	before_filter	:admin_authorize, :only => [:index, :destroy, :new]
	
  # GET /users
  # GET /users.xml
  def index
    @users = User.order(:admin)
		@cart = current_cart

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
  	if session[:admin]
	  	@user = User.find(params[:id])
  	else
  		@user = User.find(session[:user_id])
		end
		@cart = current_cart
	  
	  respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @user }
		end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
    	format.xml  { render :xml => @user }
    end
  end

	# GET /users/register
  # GET /users/register.xml
  def register
    @user = User.new
    
    respond_to do |format|
      format.html # register.html.erb
      format.xml  { render :xml => @user }
    end
  end
  
  # GET /users/1/edit
  def edit
    if session[:admin]
	  	@user = User.find(params[:id])
  	else
  		@user = User.find(session[:user_id])
		end
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    
    respond_to do |format|
      if @user.save
      	session[:user_id] = @user.id
      	if session[:admin]
		      format.html { redirect_to(users_url, 
		        :notice => "User #{@user.name} was successfully created.") }
        else
        	format.html { redirect_to(store_url, 
		        :notice => "User #{@user.name} registered successfully") }
		    end
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(user_url, 
          :notice => "User #{@user.name} was successfully updated.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    if !@user.admin
		  begin
				@user.destroy
				flash[:notice] = "User #{@user.name} deleted"

			  rescue Exception => e
			    flash[:notice] = e.message
	      end
	  else
    	flash[:notice] = "You can't delete admin #{@user.name} !"
    end

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

end
