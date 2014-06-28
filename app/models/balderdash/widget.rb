module Balderdash
  class Widget
    include ActiveModel::Conversion

    attr_reader :id, :ajax_id

    def initialize
      id = rand(36**8).to_s(36)
      @id ||= "dom_" + id
      @ajax_id ||= "ajax_" + id
    end

    def ajax_url
      u = File.join("/", Balderdash.mounted_at, self.class.action_name)
      puts u
      u
    end

    def self.action_name
      subclass_name.tableize.gsub(/s$/,'')
    end

    def subclass_name
      self.class.subclass_name
    end

    def self.subclass_name
      self.name.split("::")[1..-1].join
    end
  end
end
