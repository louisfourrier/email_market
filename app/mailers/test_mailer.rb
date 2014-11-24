class TestMailer < ActionMailer::Base
  default from: "mail-market@rebble.it"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.test.subject
  #
  def test
    @greeting = "Hi"

    mail to: "louis.fourrier@gmail.com"
  end
end
