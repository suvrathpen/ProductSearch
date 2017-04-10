class ProductSearchController < ApplicationController

  # GET /searches
  def index
    @items = Sem3SearchService.new(params).execute
  end
end
