#
# A simple form, coded in ruby, using the rwt library
#
window('Simple Form - Rwt code',360,210) do |w|
  form(:url=> '/contacts_rwt/create',
       :authenticity_token=>form_authenticity_token,
       :labelWidth=> 75,
       :defaults=> {:width=> 230}
  ) do |f|
    field('First Name','contact[first]', :allowBlank=> false)
    field('Last Name', 'contact[last]')
    field('Company', 'contact[company]')
    field('Email',  'contact[email]', :vtype=>'email')
    field('Time', 'contact[time]', :minValue=> '8:00am', :maxValue=> '6:00pm', :xtype=>'timefield')
    f.buttons=[
      button('Save',:tooltip=>'Save data'){|b| b.on_click {f.submit}},
      button('Cancel',:tooltip=>'Cancel') {|b| b.on_click {w.close}},
      button('Scaffold',:tooltip=> 'See data with a traditional Rails scaffold') do |b|
        b.on_click {Rwt << "window.open('/contacts');"}
      end
    ]
  end
end

# Helper calls to show the rails code used to generate this form
show_code('app/controllers/forms_controller.rb')
show_code('app/views/forms/very_simple_rwt.rb')

# Coments
# =======
#
# The ruby code inside the .rb views is normal ruby code. You have access to
# controller instance variables and can use normal ruby constructs.
#
# This is a fully working form. If you save any data you can see the results
# with a traditional rails scaffold (press the scaffold button).
#

