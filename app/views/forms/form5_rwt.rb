#
# Example coded in ruby, using the rwt library -
#
window('... and forms can contain TabPanel(s) - rwt',612,450,:x=>80,:y=>80) do
  form(:labelAlign=>'top',:title=>'Inner Tabs',:bodyStyle=>'padding:5px',:width=>600) do |f|
    panel(:layout=>'column',:border=>false) do
      panel(:columnWidth=>0.5,:layout=>'form',:border=>false) do
        field('first','First Name',:anchor=>'95%')
        field('company','Company',:anchor=>'95%')
      end
      panel(:columnWidth=>0.5,:layout=>'form',:border=>false) do
        field('last','Last Name',:anchor=>'95%')
        field('email','Email',:anchor=>'95%')
      end
    end
    tabpanel(:plain=>true,:activeTab=>0,:height=>235,:defaults=>{:bodyStyle=>'padding:10px'}) do
      panel(:title=>'Personal Details',:layout=>'form',:defaults=>{:width=>230}) do
        field('first','First Name',:allowBlank=>false,:value=>'Jack')
        field('last','Last Name',:value=>'Slocum')
#            },{
#                fieldLabel: 'Company',
#                name: 'company',
#                value: 'Ext JS'
#            }, {
#                fieldLabel: 'Email',
#                name: 'email',
#                vtype:'email'

      end
      panel(:title=>'Phone Numbers',:layout=>'form',:defaults=>{:width=>230}) do
      end
    end
#    f.buttons=[{:text=>'Save'},{:text=>'Cancel'}]
  end
end

# Helper calls to show the rails code used to generate this form
show_code("app/controllers/forms_controller.rb")
show_code("app/views/forms/form5_rwt.rb")
