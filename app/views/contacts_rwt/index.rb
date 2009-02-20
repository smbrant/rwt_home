window('Contacts',500,350) do
  dbgrid(Contact,ContactsRwtController,form_authenticity_token) do
    field('first')
    field('last')
    field('company')
    field('email')
    field('time')
  end
end

show_code('app/controllers/contacts_rwt_controller.rb')
show_code('app/views/contacts_rwt/index.rb')
