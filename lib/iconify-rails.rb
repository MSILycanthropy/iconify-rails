module Iconify
  class Configuration
    attr_accessor :file, :default_suffix

    def initialize
      @file = "vendor/icons/heroicons.json"
      @default_suffix = nil
    end
  end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end

    def start
      path = Rails.root.join(configuration.file)
      raw = File.read(path)
      parsed = JSON.parse(raw)
      raw_suffixes = parsed.delete("suffixes")
      raw_aliases = parsed.delete("aliases")

      self.const_set("ICON_DATA", parsed.freeze)
      self.const_set("SUFFIXES", raw_suffixes&.keys.freeze)
      self.const_set("ALIASES", raw_aliases&.to_h { |k, v| [ k, v["parent"] ] }&.compact)
    end
  end
end

require "iconify/version"
require "iconify/engine"
