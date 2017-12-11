class ProductSearchController < ApplicationController

  # GET /searches
  def index
  	#Product.where()
  	puts "The search value is: "
  	puts params[:search]
  	puts "Searching database is: "
  	# check if search matches with anything in database
  	search_result = Product.where("lower(name) LIKE ?", "%#{params[:search]}%")
  	@database_search = false
  	puts search_result.blank?
  	if search_result.blank?
    	@items = Sem3SearchService.new(params).execute
    	#store results into a database
	    @items.each do |item|
	    	product = Product.new
	    	product.name = item['name']
	   		product.price = item['price'].to_f
	    	product.link = item['sitedetails'].first['url']
	    	product.retailer_name = item['sitedetails'].first['name']
	    	product.save
	    end
	  else
	  	@items = search_result
	  	@database_search = true
	  end
  end
end
