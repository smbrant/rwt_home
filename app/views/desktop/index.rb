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
    end
   end
#  app << w1=window('Roadmap',400,300,:x=>300,:y=>300,
#              :html=>"Here you have a work area to play with rwt. Close this window and start right now!"
#            ) do |w|
##    w.config[:listeners]={:close=>function("location.href='/desktop/index_clean'")}
#    w.show
#  end
#  app << w2=window('teste2',350,350,:x=>300,:y=>300,
#                    :html=>'Exemplo de Crud'
#                  ) do |w|
#    w.show
#  end
#  app << w3=window('teste3',300,300,:x=>300,:y=>300,
#                    :html=>'Introdução geral'
#                  ) do |w|
##    w.config[:listeners]={:show=>message('Welcome!',"You are entering the RWT documentation and examples site. Here you can get a quick view of what RWT can offer to you. Feel at home!")}
#    w.show
#  end
#  app << program(
#    "w1=#{w1.jsObject}",
#    "task1=0",
#    do_task1=var(function(
#        "w1.setX(w1.getX()+5);",
#        "w1.setY(w1.getY()+1);",
#        "if(w1.getY()>400){clearInterval(task1)}"
#      )),
#    "task1=setInterval(#{do_task1},1)",
#
#    "w2=#{w2.jsObject}",
#    "task2=0",
#    do_task2=var(function(
#        "w2.setX(w2.getX()-1);",
#        "w2.setY(w2.getY()-3);",
#        "if(w2.getY()<150){clearInterval(task2)}"
#      )),
#    "task2=setInterval(#{do_task2},1)",
#
#    "w3=#{w3.jsObject}",
#    "task3=0",
#    do_task3=var(function(
#        "w3.setX(w3.getX()+3);",
#        "w3.setY(w3.getY()-3);",
#        "if(w3.getY()<50){clearInterval(task3)}"
#      )),
#    "task3=setInterval(#{do_task3},1)",
#    ""
#  )
end
