class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(params[:comment])
		@comment.user_id = session[:user_id]
		
		respond_to do |format|
			if @comment.save
				format.html { redirect_to product_path(@product) }
				format.js		{ @product }
				format.xml  { render :xml => @comment, :status => :created, :location => @comment }
			end
		end
  end
  
  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    
    respond_to do |format|
      format.html { redirect_to product_path(@product) }
      format.js		{ @product }
      format.xml  { head :ok }
    end
  end
  
end
