#
# A simple controller using rwt.
#
# For any action requested, the controller will do rwt_render.
# rwt_render tries to find a .rb file corresponding to the action. If found
# it executes the ruby code generating javascript code that is sent to
# the rwt application loaded in the browser for execution.
#
# If .rb is not found, it tries to find a .js file corresponding to the action. If
# found, rwt treats this file as a .erb and after erb processing sends the
# resulting javascript for execution in the rwt application.
#
class FormsController < ApplicationController
  before_filter :rwt_render
end
