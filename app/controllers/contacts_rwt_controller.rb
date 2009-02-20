class ContactsRwtController < ApplicationController
  def index
    respond_to do |format|
      format.js {rwt_render}
      format.json { render :json => find_contacts(params[:filter]).to_ext_json(:class=>:contact, :count => count(params[:fields])) }
    end
  end

  def new
    @contact = Contact.new
    respond_to do |format|
      format.js {rwt_render}
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    respond_to do |format|
      format.js {rwt_render}
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    respond_to do |format|
      format.js do
        if @contact.save
          rwt_ok
        else
          rwt_err_messages(@contact)
        end
      end
    end
  end

  def update
    @contact = Contact.find(params[:id])
    respond_to do |format|
      format.js do
        if @contact.update_attributes(params[:contact])
          rwt_ok
        else
          rwt_err_messages(@contact)
        end
      end
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      rwt_ok
    else
      rwt_err_messages(@contact)
    end
  end

  protected

    def find_contacts(filter)
      pagination_state = update_pagination_state_with_params!(:contact)
      Contact.find(:all, options_from_pagination_state(pagination_state).merge(:conditions=>["first like ?","%#{filter}%"]))
    end

    def count(filter)
      if filter == nil or filter.empty? then
         Contact.count
      else
         Contact.count(:conditions=>"first like '%#{filter}%'")
      end
    end
end
