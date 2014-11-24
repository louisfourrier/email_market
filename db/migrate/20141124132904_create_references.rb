class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.references :product, index: true
      t.references :cart, index: true
      t.integer :item_number
      t.float :item_price
      t.float :total_price
      t.text :product_url
      t.text :condition
      t.datetime :date_of_order
      t.datetime :date_of_delivery
      t.text :comment

      t.timestamps
    end
  end
end
