class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter :set_language

  # Helper to show code from this rails application
  def show_code(source)
    if session[:ide_activated]
      title= source.split('/').last
      Rwt << "a=Ext.getCmp('ide');"
      Rwt << "n=a.items.length;"
      Rwt << "rs=a.items;"
      Rwt << "found=false;"
      Rwt << "for(i=0;i<n;++i) {if(rs.items[i].code=='#{source}'){found=true}};"
      Rwt << "if(!found){Ext.getCmp('ide').add({title:'#{title}',code:'#{source}',closable:true,autoLoad:{url:'/code/show/#{source}'}}).show();}"
    end
  end

  private
  def set_language
    I18n.locale= session[:language]
  end

end
