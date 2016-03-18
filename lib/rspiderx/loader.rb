module Rspiderx
  # The class used to load different modules. It assumes all modules and thier
  # plugins lives in lib/rspiderx and follow same pattern for naming
  # rspiderx/module.rb
  # rspiderx/module_plugin.rb
  class Loader
    def self.get(type, mod, mediator = nil)
      name = mod.respond_to?('is_a') && mod.is_a(Hash) ? mod['name'] : mod
      args = mod.respond_to?('is_a') && mod.is_a(Hash) ? mod['args'] : {}

      require "rspiderx/#{type}"
      require "rspiderx/#{type}_#{name}"

      mod_class_name = "#{type.capitalize}#{name.capitalize}"
      mod_instance = Object.const_get(mod_class_name).new(args)

      options = [mod_instance]
      options.push(mediator) if mediator

      return Object.const_get(type.capitalize).new(*options)
    end
  end
end
