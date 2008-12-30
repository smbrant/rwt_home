Rwt::DbGridWindow.new({
  :model=> Contact,
  :controller=> RwtContactsController,
  :title=> 'Contacts',
  :width=>350,
  :fields=>['name','city','email'],
  :hideId=>true,
  :authenticity_token=> form_authenticity_token
})
