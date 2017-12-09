module ProductSearchHelper
	def link_to_retailerOne(item)
		name = item['retailer_name']
		url = item['link']

		link_to(name,url)
	end

  def link_to_retailer(item)
    if item['sitedetails'].any?
      name = item['sitedetails'].first['name']
      url = item['sitedetails'].first['url']

      link_to(name, url)
    else
      '--'
    end
  end
end
