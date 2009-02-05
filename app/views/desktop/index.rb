Rwt << "show_html= function(url){Ext.get('main').getUpdater().update({url:url})};"

rwt_app do
  toolbar(:place=>'tb') do
    menu('Rwt') do
      menu_item('What is this?',function("Ext.get('main').getUpdater().update({url:'/what_is_this.html'})"))
      menu_item('Getting started',function("show_html('/getting_started.html')"))
      menu_item('Explore',function("window.open('/desktop/examples')"))
#      menu_item('Basic CRUD',call_view('/rwt_contacts/index'))
#      menu_item('Other tests',message('Other tests','To include other tests, alter the menu in /app/views/desktop/index.rb'))
#      menu_item('Clear screen',function("location.href='/desktop/index_clean'"))
    end
    menu('Tests') do
      menu_item('First window',call_view('/test/first'))
      #TODO: use the same pattern, instead of call_view
#      menu_item('First window'){|m| m.on('click'){show_view('/test/first')}}
    end
    button('',:iconCls=>'BR'){|b| b.on('click') {show_view('/desktop/language/br')}}
    button('',:iconCls=>'US'){|b| b.on('click') {show_view('/desktop/language/us')}}
   end
end
