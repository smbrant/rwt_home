rwt_app do
  toolbar(:place=>'tb') do
    button('',:iconCls=>'US'){|b| b.on('click') {show_html('/desktop/language_examples/en')}}
    button('',:iconCls=>'BR'){|b| b.on('click') {show_html('/desktop/language_examples/pt-BR')}}
    menu(t(:'menu.ide.header')) do
      menu_item(t(:'menu.ide.activate'),call_view("/ide/activate"))
      menu_item(t(:'menu.ide.deactivate'),call_view("/ide/deactivate"))
      menu_item(t(:'menu.ide.clear'),call_view("/ide/clear"))
    end
    menu(t(:'menu.doc.header')) do
      menu_item(t(:'menu.doc.users_manual'),function("window.open('http://docs.google.com/Doc?id=dpmc7mb_5cf3wkjfp')"))
    end
    menu(t(:'menu.simple_tests.header')) do
      menu_item(t(:'menu.simple_tests.simple_window'),call_view("/test/win_test"))
      menu_item(t(:'menu.simple_tests.inline_code'),call_view("/test/inline_test"))
      menu_item(t(:'menu.simple_tests.crud'),call_view("/contacts.rwt"))
    end
    menu(t(:'menu.forms.header')) do
#      menu(t(:'menu.forms.ajax_xml.header')) do
#        menu(t(:'menu.forms.ajax_xml.form1')) do
#          menu_item('extjs',call_view('/ajax_xml/form1_extjs'))
#          menu_item('rwt',call_view('/ajax_xml/form1_rwt'))
#        end
#      end
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
            :items=>[{:title=>t(:'welcome'),
                :closable=>true,
                :autoLoad=>{:url=>"/#{I18n.locale}_introduction.html"}
              }]
  )
end
