# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  name          :string
#  price         :decimal(, )
#  link          :string
#  retailer_name :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "presence of certain attributes" do
		p = Product.new
  	assert p.invalid?
  	assert p.errors[:name].any?
  	assert p.errors[:link].any?
  	assert p.errors[:retailer_name].any?
  	puts "Passes test that checks for the presence of certain attributes"
  end

  test "if price is valid" do
  	p = Product.new(name: "Apple X",
  									link: "apple.com",
  									retailer_name: "Apple")
  	p.price = -1
  	assert p.invalid?
  	p.price = 0
  	assert p.invalid?
  	p.price = 1
  	assert p.valid?
  	puts "Passes test that checks whether the price is valid"
  end
end
