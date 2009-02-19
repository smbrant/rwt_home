#
# Example coded in ruby, using the rwt library -
#
window('Forms can be a TabPanel... - rwt',360,230,:x=>80,:y=>80) do
  form(:labelWidth=>75,:border=>false,:width=>350) do |f|
    tabpanel(:activeTab=>0,:defaults=>{:autoHeight=>true, :bodyStyle=>'padding:10px'},:border=>false) do
      panel(:title=>'Personal Details',:layout=>'form',:defaults=>{:width=>200}) do
        field('first','First Name',:allowBlank=>false,:value=>'Jack')
        field('last','Last Name',:value=>'Slocum')
        field('company','Company',:value=>'Ext JS')
        field('email','Email',:vtype=>'email')
      end
      panel(:title=>'Phone Numbers',:layout=>'form',:defaults=>{:width=>200}) do
        field('home','Home',:value=>'(888) 55-1212')
        field('business','Business')
        field('fax','Fax')
      end
    end
    f.buttons=[{:text=>'Save'},{:text=>'Cancel'}]
  end
end

# Helper calls to show the rails code used to generate this form
show_code("app/controllers/forms_controller.rb")
show_code("app/views/forms/form4_rwt.rb")
