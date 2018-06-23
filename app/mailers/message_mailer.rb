class MessageMailer < ApplicationMailer
  def contact(message)
    @message = message  # Instance variable => available in view

    mail(from: @message.name,
         to: "info@olivierriccini.com",
         subject: @message.subject)
    # This will render a view in `app/views/user_mailer`!
  end
end
