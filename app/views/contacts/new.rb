window('New Contact',500,250) do
  editform(@contact,ContactsRwtController,form_authenticity_token) do
    field('first')
    field('last')
    field('company')
    field('email')
    field('time')
  end
end

show_code('app/controllers/contacts_controller.rb')
show_code('app/views/contacts/new.rb')
