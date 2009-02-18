#
# Example coded in ruby, using the rwt library
#
window('Multi Column, Nested Layouts and Anchoring - rwt',600,400,:x=>80,:y=>80) do
  form(:labelAlign=>'top',:frame=>true,:bodyStyle=>'padding:5px 5px 0',:width=>600) do |f|
    panel(:layout=>'column') do
      panel(:columnWidth=>0.5,:layout=>'form') do
        field('first','First Name',:anchor=>'95%')
        field('company','Company',:anchor=>'95%')
      end
      panel(:columnWidth=>0.5,:layout=>'form') do
        field('first','First Name',:anchor=>'95%')
        field('company','Company',:anchor=>'95%')
      end
    end
    htmleditor(:fieldLabel=>'Biography',:height=>200,:anchor=>'98%')
    f.buttons=[{:text=>'Save'},{:text=>'Cancel'}]
  end
end

# Helper calls to show the rails code used to generate this form
show_code("app/controllers/forms_controller.rb")
show_code("app/views/forms/form3_rwt.rb")
