class ProductSearchController < ApplicationController

  # GET /searches
  def index
  	#Product.where()
  	puts "The search value is: "
  	puts params[:search]
  	puts "Searching database is: "
  	# check if search matches with anything in database
  	search_result = Product.where("lower(name) LIKE ?", "%#{params[:search]}%")
  	puts search_result.blank?
  	if search_result.blank?
    	@items = Sem3SearchService.new(params).execute
    	#store results into a database
	    @items.each do |item|
	    	product = Product.new
	    	product.name = item['name']
	   		product.price = item['price']
	    	product.link = item['sitedetails'].first['url']
	    	product.retailer_name = item['sitedetails'].first['name']
	    	product.save
	    end
	  end
  end
end
