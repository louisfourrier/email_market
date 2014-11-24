class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :message, index: true
      t.float :total_price
      t.datetime :delivery_date
      t.string :products_count
      t.string :currency
      t.boolean :treated
      t.datetime :treated_date

      t.timestamps
    end
  end
end
