class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(params[:comment])
	@comment.user_id = session[:user_id]
	@comment.save
	redirect_to product_path(@product)
  end
end