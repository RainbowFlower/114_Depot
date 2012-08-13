class PcategoriesController < ApplicationController
  # GET /pcategories
  # GET /pcategories.xml
  def index
    @pcategories = Pcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pcategories }
    end
  end

  # GET /pcategories/1
  # GET /pcategories/1.xml
  def show
    @pcategory = Pcategory.find(params[:id])
    @titles = @pcategory.childcategory

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pcategory }
    end
  end

  # GET /pcategories/new
  # GET /pcategories/new.xml
  def new
    @pcategory = Pcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pcategory }
    end
  end

  # GET /pcategories/1/edit
  def edit
    @pcategory = Pcategory.find(params[:id])
  end

  # POST /pcategories
  # POST /pcategories.xml
  def create
    @pcategory = Pcategory.new(params[:pcategory])

    respond_to do |format|
      if @pcategory.save
        format.html { redirect_to(@pcategory, :notice => 'Pcategory was successfully created.') }
        format.xml  { render :xml => @pcategory, :status => :created, :location => @pcategory }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pcategories/1
  # PUT /pcategories/1.xml
  def update
    @pcategory = Pcategory.find(params[:id])

    respond_to do |format|
      if @pcategory.update_attributes(params[:pcategory])
        format.html { redirect_to(@pcategory, :notice => 'Pcategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pcategories/1
  # DELETE /pcategories/1.xml
  def destroy
    @pcategory = Pcategory.find(params[:id])
    @pcategory.destroy

    respond_to do |format|
      format.html { redirect_to(pcategories_url) }
      format.xml  { head :ok }
    end
  end
end
