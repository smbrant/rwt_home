rwt_app do
  toolbar(:place=>'tb') do
    text('<b>Rwt Examples:</b>')
    menu('IDE') do
      menu_item('Activate',call_view("/ide/activate"))
      menu_item('De-activate',call_view("/ide/deactivate"))
      menu_item('Clear',call_view("/ide/clear"))
    end
    menu('Simple tests') do
      menu_item('Simple window',call_view("/test/win_test"))
      menu_item('Inline code',call_view("/test/inline_test"))
      menu_item("User's Manual",function("window.open('http://docs.google.com/Doc?id=dpmc7mb_5cf3wkjfp')"))
    end
    menu('Forms') do
      menu('Dynamic Forms') do
        menu('Form 1 - Very Simple') do
          menu_item('extjs',call_view('/forms/form1_extjs'))
          menu_item('rwt',call_view('/forms/form1_rwt'))
        end
        menu('Form 2 - Adding fieldsets') do
          menu_item('extjs',call_view('/forms/form2_extjs'))
          menu_item('rwt',call_view('/forms/form2_rwt'))
        end
        menu('Form 3 - A little more complex') do
          menu_item('extjs',call_view('/forms/form3_extjs'))
          menu_item('rwt',call_view('/forms/form3_rwt'))
        end
        menu('Form 4 - Forms can be a TabPanel...') do
          menu_item('extjs',call_view('/forms/form4_extjs'))
          menu_item('rwt',call_view('/forms/form4_rwt'))
        end
        menu('Form 5 - ... and forms can contain TabPanel(s)') do
          menu_item('extjs',call_view('/forms/form5_extjs'))
          menu_item('rwt',call_view('/forms/form5_rwt'))
        end
      end
    end

  end

  tabpanel( :renderTo=>'ide-main',
            :resizeTabs=>true,
            :enableTabScroll=>true,
            :id=>'ide',
            :activeTab=>0,
            :width=>'auto',
            :minTabWidth=>100,
            :tabWidth=>150,
            :height=>700,
            :plain=>true,
            :hidden=>true,
            :defaults=>{:autoScroll=>true},
            :items=>[{:title=>'Welcome',
                :closable=>true,
                :autoLoad=>{:url=>'/introduction.html'}
              }]
  )
end
