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
    # change the language used
    session[:language]=params[:id]
    I18n.locale=(params[:id])
    redirect_to :action=> :index
  end

  def language2
    session[:language]=params[:id]
    I18n.locale=(params[:id])
    redirect_to :action=> :examples
  end
end
