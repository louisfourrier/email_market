class AddEmailToMailAccount < ActiveRecord::Migration
  def change
    add_column :mail_accounts, :email, :string
  end
end
