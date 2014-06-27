module Balderdash
  class MainController < ApplicationController

    def index
      @widgets = Balderdash::WidgetService.find_widgets.map(&:new), Balderdash::WidgetService.find_widgets.map(&:new)
    end

  end
end
