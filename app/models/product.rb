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

class Product < ApplicationRecord
	validates_presence_of :name, :link, :retailer_name
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
