#
# Example coded in ruby, using the rwt library
#
window('Simple Form with FieldSets - rwt',360,410,:x=>80,:y=>80) do
  form(:url=>'save-form.php',:labelWidth=>75,:frame=>true,:bodyStyle=>'padding:5px 5px 0') do
    fieldset('User Information',:checkboxToggle=>true,:autoHeight=>true,:defaults=>{:width=>210},:collapsed=>true) do
      field('first','First Name',:allowBlank=>false)
      field('last','Last Name')
      field('company') # fieldLabel defaults to 'Company'
      field('email',:vtype=>'email')
    end
    fieldset('Phone Number',:collapsible=>true,:autoHeight=>true, :defaults=>{:width=>210}) do
      field('home','Home',:value=>'(888) 555-1212')
      field('business','Business')
      field('mobile','Mobile')
      field('fax','Fax')
    end
  end
end

# Helper calls to show the rails code used to generate this form
show_code("app/controllers/forms_controller.rb")
show_code("app/views/forms/form2_rwt.rb")
