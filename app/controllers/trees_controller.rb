class TreesController < ApplicationController
  before_filter :rwt_render, :except=>[:time]

  def time
    render :text=> Time.now.to_s
  end
end
