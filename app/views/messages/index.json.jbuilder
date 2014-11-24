json.array!(@messages) do |message|
  json.extract! message, :id, :mail_account_id, :html_content, :treated, :treated_date, :mail_commerce_platform
  json.url message_url(message, format: :json)
end
