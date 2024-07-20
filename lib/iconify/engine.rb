require "iconify/helpers"

class Iconify::Engine < ::Rails::Engine
  initializer "iconify.engine" do |app|
    Iconify.start
    ActionView::Base.send :include, Iconify::Helpers
  end
end
