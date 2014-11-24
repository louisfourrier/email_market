class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.text :slug
      t.text :amazon_url
      t.text :product_detail
      t.text :url_from_site
      t.text :html_content
      t.text :html_url
      t.text :image_url

      t.timestamps
    end
  end
end
