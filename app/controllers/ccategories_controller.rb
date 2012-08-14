class CcategoriesController < ApplicationController
	skip_before_filter :authorize, :only => ['index', 'show']
	before_filter :admin_authorize, :only => ['new', 'edit', 'update', 'destroy', 'create']
	
  # GET /ccategories
  # GET /ccategories.xml
  def index
    @ccategories = Ccategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ccategories }
    end
  end

  # GET /ccategories/1
  # GET /ccategories/1.xml
  def show
    @ccategory = Ccategory.find(params[:id])
    @products = Product.all
    @pcategory = Pcategory.find_by_title(@ccategory.ptitle)
    @cart = current_cart

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ccategory }
    end
  end

  # GET /ccategories/new
  # GET /ccategories/new.xml
  def new
    @ccategory = Ccategory.new
    @titles = ptitles

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ccategory }
    end
  end

  # GET /ccategories/1/edit
  def edit
    @ccategory = Ccategory.find(params[:id])
    @titles = ptitles
  end

  # POST /ccategories
  # POST /ccategories.xml
  def create
    @ccategory = Ccategory.new(params[:ccategory])
    @titles = ptitles

    respond_to do |format|
      if @ccategory.save
        format.html { redirect_to(@ccategory, :notice => 'Ccategory was successfully created.') }
        format.xml  { render :xml => @ccategory, :status => :created, :location => @ccategory }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ccategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ccategories/1
  # PUT /ccategories/1.xml
  def update
    @ccategory = Ccategory.find(params[:id])

    respond_to do |format|
      if @ccategory.update_attributes(params[:ccategory])
        format.html { redirect_to(@ccategory, :notice => 'Ccategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ccategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ccategories/1
  # DELETE /ccategories/1.xml
  def destroy
    @ccategory = Ccategory.find(params[:id])
    @ccategory.destroy

    respond_to do |format|
      format.html { redirect_to(ccategories_url) }
      format.xml  { head :ok }
    end
  end
end
