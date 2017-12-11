class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :link
      t.string :retailer_name

      t.timestamps
    end
  end
end
