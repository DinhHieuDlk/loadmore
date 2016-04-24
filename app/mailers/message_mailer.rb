class MessageMailer < ApplicationMailer
default from: "blog <noreply@yourdomain.com>"
default to: "blog <your.email@yourdomain.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end
end
