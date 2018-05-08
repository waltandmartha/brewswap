class ContactMailer < ApplicationMailer

    def send_contact_email(user_info)
        recipient = ENV.fetch('MAILGUN_EMAIL')
        @user = user_info[:user]
        @name = user_info[:name]
        @message = user_info[:message]
        date = Time.now.strftime("%B %d, %Y, %A")
        subject = "New user message #{date}"
        mail(to: recipient, subject: subject)
end

end
