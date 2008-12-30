class RwtContactsController < ApplicationController

  def index
    respond_to do |format|
      format.js {rwt_template}
      format.json { render :json => find_contacts(params[:filter]).to_ext_json(:class=>:contact, :count => Contact.count) }
    end
  end

  def new
    @contact = Contact.new
    respond_to do |format|
      format.js {rwt_template}
    end
  end  

  def edit
    @contact = Contact.find(params[:id])
    respond_to do |format|
      format.js {rwt_template}
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
    @contact.destroy
    respond_to do |format|
      format.js  { head :ok }
    end
  rescue
    respond_to do |format|
      format.js  { head :status => 500 }
    end
  end
  
  protected
  
    def find_contacts(filter)
      pagination_state = update_pagination_state_with_params!(:contact)
      options=options_from_pagination_state(pagination_state)
      options.merge!(:conditions=>["name like ?","%#{filter}%"])
      Contact.find(:all, options)
    end
  
end
