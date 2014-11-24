json.array!(@mail_accounts) do |mail_account|
  json.extract! mail_account, :id, :user_id, :email_verified, :verify_token, :verify_sent_date
  json.url mail_account_url(mail_account, format: :json)
end
