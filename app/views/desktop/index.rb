Rwt << "show_html= function(url){Ext.get('main').getUpdater().update({url:url})};"

rwt_app do
  toolbar(:place=>'tb') do
    menu(t(:'menu.home.header')) do
      menu_item(t(:'menu.home.what_is_this'),function("Ext.get('main').getUpdater().update({url:'/#{I18n.locale}_what_is_this.html'})"))
      menu_item(t(:'menu.home.getting_started'),function("show_html('/#{I18n.locale}_getting_started.html')"))
      menu_item(t(:'menu.home.explore'),function("window.open('/desktop/examples')"))
      menu_item(t(:'menu.home.users_manual'),function("window.open('http://docs.google.com/Doc?id=dpmc7mb_5cf3wkjfp')"))
      menu_item(t(:'menu.home.install'),function("show_html('/#{I18n.locale}_install.html')"))
    end
    menu(t(:'menu.tests.header')) do
      menu_item(t(:'menu.tests.first_window'),call_view('/test/first'))
      #TODO: use the same pattern, instead of call_view
#      menu_item('First window'){|m| m.on('click'){show_view('/test/first')}}
    end
    button('',:iconCls=>'US'){|b| b.on('click') {show_html('/desktop/language/en')}}
    button('',:iconCls=>'BR'){|b| b.on('click') {show_html('/desktop/language/pt-BR')}}
   end
end
