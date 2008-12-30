class ContactsRwtController < ApplicationController

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      rwt_ok
    else
      rwt_err_messages(Contact)
    end
  end

  
end
