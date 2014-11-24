class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :mail_account, index: true
      t.text :html_content
      t.boolean :treated
      t.datetime :treated_date
      t.text :mail_commerce_platform

      t.timestamps
    end
  end
end
