require 'rails/engine'

module LiveScript
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :ls

      if config.respond_to?(:annotations)
        config.annotations.register_extensions("ls") { |annotation| /#\s*(#{annotation}):?\s*(.*)$/ }
        config.annotations.register_extensions("livescript") { |annotation| /#\s*(#{annotation}):?\s*(.*)$/ }
      end

      # initializer :register_livescript do |app|
      #   app.assets.register_engine '.ls', TiltTemplate
      #   app.assets.register_engine '.livescript', TiltTemplate
      # end
    end
  end
end
