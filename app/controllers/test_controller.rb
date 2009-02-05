class TestController < ApplicationController
  before_filter :rwt_render, :except=>[:inline_test,:first]

  def inline_test
    rwt_render :inline=>"window('inline test',200,200) do\n"+
                          "button('test') do |b|\n"+
                            "b.on('click') do\n"+
                              "message('button clicked')"+
                            "end\n"+
                          "end\n"+
                        "end\n"+
                        "show_code('app/controllers/test_controller.rb')"
  end

  def first
    rwt_render
  end
end
