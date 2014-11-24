json.array!(@raw_mails) do |raw_mail|
  json.extract! raw_mail, :id, :email_from, :email_body, :email_subject
  json.url raw_mail_url(raw_mail, format: :json)
end
