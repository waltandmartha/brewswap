class PagesController < ApplicationController
  before_action :authenitcate_user!, except: [:home]
  def index
  end

  def contact_email
    user = current_user
    message = email_params[:message]
    name = email_params[:name]
    user_info = {user: user, message: message, name: name}
    ContactMailer.send_contact_email(user_info).deliver_now
    render :contact
  end

  def email_params
    params.require(:contact).permit(:name, :message)
  end

end
