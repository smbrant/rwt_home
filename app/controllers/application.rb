class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  # Helper to show code from this rails application
  def show_code(code)
    if session[:ide_activated]
      title= code.split('/').last
      Rwt << "a=Ext.getCmp('ide');"
      Rwt << "n=a.items.length;"
      Rwt << "rs=a.items;"
      Rwt << "found=false;"
      Rwt << "for(i=0;i<n;++i) {if(rs.items[i].title=='#{title}'){found=true}};"
      Rwt << "if(!found){Ext.getCmp('ide').add({title:'#{title}',closable:true,autoLoad:{url:'/code/show/#{code}'}}).show();}"
    end
  end

end
