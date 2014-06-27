module Balderdash
  class MainController < ApplicationController

    def index
      @widgets = Balderdash.registered.map(&:new)
      @ajax_widgets = Balderdash.registered_ajax.map(&:new)
      puts "Found #{@widgets.count} widgets"
      puts "Found #{@ajax_widgets.count} ajax widgets"
    end

  end
end
