module ApplicationHelper
  # Helper to show code, don't worry with this code, not important
  def show_code(code)
    if session[:ide_activated]
      title= code.split('/').last
      Rwt << "a=Ext.getCmp('ide');"
      Rwt << "n=a.items.length;"
      Rwt << "rs=a.items;"
      Rwt << "found=false;"
      Rwt << "for(i=0;i<n;++i) {if(rs.items[i].code=='#{code}'){found=true}};"
      Rwt << "if(!found){Ext.getCmp('ide').add({title:'#{title}',code:'#{code}',closable:true,autoLoad:{url:'/code/show/#{code}'}}).show();}"
    end
  end
end
