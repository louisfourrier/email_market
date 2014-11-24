class EmailProcessor
  def self.process(email)
    RawMail.create!( :email_body => email.body, :email_from => email.from )
  end
end