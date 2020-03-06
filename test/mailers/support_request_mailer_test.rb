require 'test_helper'

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    mail = SupportRequestMailer.respond(support_requests(:one))
    mail.to = "to@example.org"
    mail.from = "from@example.com"
    assert_equal "Re: ", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    # assert_match "Hi", mail.body.encoded
  end

end
