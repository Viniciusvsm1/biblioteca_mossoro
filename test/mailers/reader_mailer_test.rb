require "test_helper"

class ReaderMailerTest < ActionMailer::TestCase
  test "loan_password_email" do
    mail = ReaderMailer.loan_password_email
    assert_equal "Loan password email", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
