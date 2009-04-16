rwt_app do
  toolbar(:place=>'tb') do
    text('<b>'+t(:'menu.rwt_examples')+'</b>')
    menu(t(:'menu.ide.header')) do
      menu_item(t(:'menu.ide.activate'),call_view("/ide/activate"))
      menu_item(t(:'menu.ide.deactivate'),call_view("/ide/deactivate"))
      menu_item(t(:'menu.ide.clear'),call_view("/ide/clear"))
    end
    menu(t(:'menu.simple_tests.header')) do
      menu_item(t(:'menu.simple_tests.simple_window'),call_view("/test/win_test"))
      menu_item(t(:'menu.simple_tests.inline_code'),call_view("/test/inline_test"))
      menu_item(t(:'menu.simple_tests.users_manual'),function("window.open('http://docs.google.com/Doc?id=dpmc7mb_5cf3wkjfp')"))
    end
    menu(t(:'menu.forms.header')) do
      menu(t(:'menu.forms.dynamic_forms.header')) do
        menu(t(:'menu.forms.dynamic_forms.form1')) do
          menu_item('extjs',call_view('/forms/form1_extjs'))
          menu_item('rwt',call_view('/forms/form1_rwt'))
        end
        menu(t(:'menu.forms.dynamic_forms.form2')) do
          menu_item('extjs',call_view('/forms/form2_extjs'))
          menu_item('rwt',call_view('/forms/form2_rwt'))
        end
        menu(t(:'menu.forms.dynamic_forms.form3')) do
          menu_item('extjs',call_view('/forms/form3_extjs'))
          menu_item('rwt',call_view('/forms/form3_rwt'))
        end
        menu(t(:'menu.forms.dynamic_forms.form4')) do
          menu_item('extjs',call_view('/forms/form4_extjs'))
          menu_item('rwt',call_view('/forms/form4_rwt'))
        end
        menu(t(:'menu.forms.dynamic_forms.form5')) do
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
