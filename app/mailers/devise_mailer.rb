class DeviseMailer < Devise::Mailer   
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  
 def headers_for(action, opts)
    headers = {
      :subject       => subject_for(action),
      :to            => resource.email,
      :from          => 'mailmarket@nadvence.com',
      :reply_to      => 'louis.fourrier@rebble.it'
    }.merge(opts)
  end
  
  def confirmation_instructions(record, token, opts={})
    super
  end
  
  def reset_password_instructions(record, token, opts={})
    super
  end
  
  def unlock_instructions(record, token, opts={})
    super
  end
  
  
  
end
