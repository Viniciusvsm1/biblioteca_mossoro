# Preview all emails at http://localhost:3000/rails/mailers/reader_mailer
class ReaderMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/reader_mailer/loan_password_email
  def loan_password_email
    ReaderMailer.loan_password_email
  end
end
