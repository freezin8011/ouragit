require 'mailgun' 
class MailController < ApplicationController
  def new
    # unless user_signed_in?
    #   redirect_to "/users/sign_in"
    #   flash[:error] = "You must be logged in to access this section"
    # end
  end

  def create
    @title = params[:title]
    @email = params[:mail]
    @content = params[:content]
    
    mg_client = Mailgun::Client.new("key-db4076af7341a43d1905b626ce27ad36")

    message_params =  {
                   from: @email,
                   to:   'freezin8011@gmail.com',
                   subject: @title,
                   text:    @content
                  }

    mg_client.send_message 'sandbox35ed6297e8604cdfb695172e4591e787.mailgun.org', message_params
  end
end
