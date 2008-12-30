Rwt::DbEditWindow.new(
  :model=> Contact,
  :title=>'New Contact',
  :height=>200,
  :width=>500,
  :fields=>['name','city','email'],
  :controller=> RwtContactsController,
  :authenticity_token=> form_authenticity_token,
  :data => @contact
)
