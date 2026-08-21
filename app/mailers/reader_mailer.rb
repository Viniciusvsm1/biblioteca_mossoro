class ReaderMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reader_mailer.loan_password_email.subject
  #
  def loan_password_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
