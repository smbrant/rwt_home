Rwt::DbEditWindow.new(
  :model=> Contact,
  :title=>'Change in Contact',
  :height=>200,
  :width=>500,
  :controller=> RwtContactsController,
  :fields=>['name','city','email'],
  :authenticity_token=> form_authenticity_token,
  :data => @contact,
  :id=>params[:id]
)