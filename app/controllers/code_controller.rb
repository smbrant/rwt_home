class CodeController < ApplicationController

  def show
    render :text=> "<pre>"+
      File.open(File.join(RAILS_ROOT,params[:path])).read+
      "</pre>"
  end
end
