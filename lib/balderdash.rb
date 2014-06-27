require "balderdash/engine"

module Balderdash

  mattr_accessor :mounted_at

  mattr_reader :registered, :registered_ajax

  @@registered = []
  @@registered_ajax = []

  def self.register(widget)
    if (widget < Balderdash::Widget) && (!@@registered.include? widget)
      @@registered << widget
    end
  end

  def self.register_as_ajax(widget)
    if (widget < Balderdash::Widget) && (!@@registered_ajax.include? widget)
      @@registered_ajax << widget
    end
  end

  def self.is_a_widget?(widget)
    widget < Balderdash::Widget
  end

end
