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
end
