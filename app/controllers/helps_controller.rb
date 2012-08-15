class HelpsController < ApplicationController
	skip_before_filter :authorize
	before_filter :admin_authorize, :only => ['new', 'edit', 'destroy', 'delete']
	
  # GET /helps
  # GET /helps.xml
  def index
    @helps = Help.find :all, :order => "tag ASC"
	@cart = current_cart

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @helps }
    end
  end

  # GET /helps/1
  # GET /helps/1.xml
  def show
    @help = Help.find(params[:id])
	@cart = current_cart

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @help }
    end
  end

  # GET /helps/new
  # GET /helps/new.xml
  def new
    @help = Help.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @help }
    end
  end

  # GET /helps/1/edit
  def edit
    @help = Help.find(params[:id])
  end

  # POST /helps
  # POST /helps.xml
  def create
    @help = Help.new(params[:help])

    respond_to do |format|
      if @help.save
        format.html { redirect_to(@help, :notice => 'Help was successfully created.') }
        format.xml  { render :xml => @help, :status => :created, :location => @help }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @help.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /helps/1
  # PUT /helps/1.xml
  def update
    @help = Help.find(params[:id])

    respond_to do |format|
      if @help.update_attributes(params[:help])
        format.html { redirect_to(@help, :notice => 'Help was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @help.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /helps/1
  # DELETE /helps/1.xml
  def destroy
    @help = Help.find(params[:id])
    @help.destroy

    respond_to do |format|
      format.html { redirect_to(helps_url) }
      format.xml  { head :ok }
    end
  end
  
  def helpregister
	@cart = current_cart
  end
  
  def helplogin
	@cart = current_cart
  end
  
  def helpsearchbykeyword
	@cart = current_cart
  end
  
  def helpsearchbytype
	@cart = current_cart
  end
  
  def helpaddtocart
	@cart = current_cart
  end
  
  def helpdeletefromcart
	@cart = current_cart
  end
  
  def helpclearcart
	@cart = current_cart
  end
  
  def helpcheckout
	@cart = current_cart
  end
  
  def helpvieworder
	@cart = current_cart
  end
  
  def helpchangeorder
	@cart = current_cart
  end
  
  def helpdeleteorder
	@cart = current_cart
  end
  
  def helpcreatecomment
	@cart = current_cart
  end
  
  def helpviewcomment
	@cart = current_cart
  end
  
  def helpchangelanguage
	@cart = current_cart
  end
  
end
