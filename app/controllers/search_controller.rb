class SearchController < ApplicationController
  skip_before_filter :authorize
  def index
    if params[:search]
      @results = Product.search(params[:q])
    end
  end

end
