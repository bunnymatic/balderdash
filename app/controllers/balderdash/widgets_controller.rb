module Balderdash
  class WidgetsController < ApplicationController

    Balderdash.registered_ajax.each do |widget|
      define_method widget.action_name do
        instance = widget.new
        render instance, locals: { id: instance.ajax_id }
      end
    end
  end
end
