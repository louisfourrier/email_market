class CreateRawMails < ActiveRecord::Migration
  def change
    create_table :raw_mails do |t|
      t.text :email_from
      t.text :email_body
      t.text :email_subject

      t.timestamps
    end
  end
end
