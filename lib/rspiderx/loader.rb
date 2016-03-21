module Rspiderx
  # The class used to load different modules. It assumes all modules and thier
  # plugins lives in lib/rspiderx and follow same pattern for naming
  # rspiderx/module.rb
  # rspiderx/module_plugin.rb
  class Loader
    def self.get(type, mediator, plugin)
      require "rspiderx/#{type}"
      klass = Object.const_get("Rspiderx::#{type.capitalize}")
      return klass.new(mediator, plugin)
    end

    def self.get_mediator(options)
      require 'rspiderx/mediator'
      return Rspiderx::Mediator.new(options)
    end
  end
end
