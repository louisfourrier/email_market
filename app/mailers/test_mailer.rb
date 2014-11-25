class TestMailer < ActionMailer::Base
  default from: "mail-market@takehebuy.com"
  default subject: "Test Mailer method"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.test.subject
  #
  def test
    @greeting = "Hi"

    mail(to: "louis.fourrier@gmail.com", subject: 'Welcome to the test suite of mail market')
  end
end
