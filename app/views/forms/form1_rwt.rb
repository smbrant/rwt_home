#
# A simple form, coded in ruby, using the rwt library
#
window('Simple Form - Rwt code',360,210) do |w|
  form(:url=> '/contacts_rwt/create',
       :authenticity_token=>form_authenticity_token,
       :labelWidth=> 75,
       :defaults=> {:width=> 230}
  ) do |f|
    field('contact[first]','First Name',:allowBlank=> false)
    field('contact[last]','Last Name')
    field('contact[company]','Company')
    field('contact[email]','Email',:vtype=>'email')
    field('contact[time]','Time',:minValue=> '8:00am', :maxValue=> '6:00pm', :xtype=>'timefield')
    f.buttons=[
      button('Save',:tooltip=>'Save data'){|b| b.on('click') {f.submit}},
      button('Cancel',:tooltip=>'Cancel') {|b| b.on('click') {w.close}},
      button('Rails scaffold',:tooltip=> 'See data with a traditional Rails scaffold') do |b|
        b.on('click') {Rwt << "window.open('/contacts');"}
      end,
      button('Rwt scaffold',:tooltip=> 'See data with a Rwt scaffold') do |b|
        b.on('click') {show_view('/contacts_rwt')}
      end
    ]
  end
end

# Helper calls to show the rails code used to generate this form
show_code('app/controllers/forms_controller.rb')
show_code('app/views/forms/form1_rwt.rb')

# Coments
# =======
#
# The ruby code inside the .rb views is normal ruby code. You have access to
# controller instance variables and can use normal ruby constructs.
#
# This is a fully working form. If you save any data you can see the results
# with a traditional rails scaffold (press the scaffold button).
#

