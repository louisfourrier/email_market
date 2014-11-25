class EmailProcessor
  
  def initialize(email)
    @email = email
  end

  def process
    # all of your application-specific code here - creating models,
    # processing reports, etc

    # here's an example of model creation
    #user = User.find_by_email(@email.from[:email])
    RawMail.create!( :email_body => @email.raw_html, :email_from => @email.from.to_s , :email_subject => @email.subject)
  end
  
  # OLD VERSION
  
  
  #def self.process(email)
  #  RawMail.create!( :email_body => email.body, :email_from => email.from )
  #end
end