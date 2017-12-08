class CreateProductSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :product_searches do |t|
      t.string :name
      t.string :price
      t.string :link
    end
  end
end
