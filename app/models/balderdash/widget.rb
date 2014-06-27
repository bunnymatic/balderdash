module Balderdash
  class Widget
    include ActiveModel::Conversion

    def self.inherited(subclass)
      puts "Subclassed Widget with #{subclass}"
    end
  end
end
