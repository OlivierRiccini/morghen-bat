class MessageMailer < ApplicationMailer
  def contact(message)
    @message = message  # Instance variable => available in view

    mail(to: "info@olivierriccini.com",
         from: @message.name,
         subject: @message.subject)
    # This will render a view in `app/views/user_mailer`!
  end
end
