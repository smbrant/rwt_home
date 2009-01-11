#
# A simple form, coded in ruby, using the rwt library
#
window('Simple Form with FieldSets - rwt',360,410,:x=>80,:y=>80) do
  form(:url=>'save-form.php',:labelWidth=>75,:frame=>true,:bodyStyle=>'padding:5px 5px 0') do
    fieldset('User Information',:checkboxToggle=>true,:autoHeight=>true,:defaults=>{:width=>210},:collapsed=>true) do
      field('First Name','first',:allowBlank=>false)
      field('Last Name','last')
      field('Company','company')
      field('Email','email',:vtype=>'email')
    end
    fieldset('Phone Number',:collapsible=>true,:autoHeight=>true, :defaults=>{:width=>210}) do
      field('Home','home',:value=>'(888) 555-1212')
      field('Business','business')
      field('Mobile','mobile')
      field('Fax','fax')
    end
  end
end

# Helper calls to show the rails code used to generate this form
show_code("app/controllers/forms_controller.rb")
show_code("app/views/forms/with_fieldsets_rwt.rb")

# Comments
# 
#
