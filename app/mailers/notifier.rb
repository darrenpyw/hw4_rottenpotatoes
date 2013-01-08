class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def welcome(recipient)
    @account = recipient
    mail(:to=> recipient.email)
  end

end
