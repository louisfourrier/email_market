class CreateMailAccounts < ActiveRecord::Migration
  def change
    create_table :mail_accounts do |t|
      t.references :user, index: true
      t.boolean :email_verified
      t.string :verify_token
      t.datetime :verify_sent_date

      t.timestamps
    end
  end
end
