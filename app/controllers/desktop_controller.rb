class DesktopController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.js {rwt_render}
    end
  end
  
  def examples
    respond_to do |format|
      format.html
      format.js {rwt_render}
    end
  end

  def util
    rwt_render
  end

  def language
    #TODO: change the language used
    puts params[:id]
    puts t('menu.tests')
    session[:language]=params[:id]
    I18n.locale=(params[:id])
    puts t('menu.tests')
#    rwt_ok
    redirect_to :action=> :index
  end
end
