class IdeController < ApplicationController

  def activate
    session[:ide_activated]=true
    rwt_render
  end

  def deactivate
    session[:ide_activated]=false
    rwt_render
  end

  def clear
    rwt_render
  end
end
