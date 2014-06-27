module Balderdash
  class Widget
    include ActiveModel::Conversion

    attr_reader :id
    
    def initialize
      @id ||= rand(36**8).to_s(36)
    end

    def ajax_url
      u = File.join("/", Balderdash.mounted_at, subclass_name.tableize.gsub(/s$/,''))
      puts u
      u
    end

    def subclass_name
      self.class.name.split("::")[1..-1].join
    end
  end
end
