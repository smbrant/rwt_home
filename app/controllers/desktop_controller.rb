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
    rwt_ok
  end
end
