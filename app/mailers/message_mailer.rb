class MessageMailer < ActionMailer::Base
  default from: "messages@randomoracle.com"

  def contact_message(message)
    @message = message
    mail to: "hello@randomoracle.com",
         subject: "Message from #{@message.name}",
         reply_to: @message.email_address
  end
end
