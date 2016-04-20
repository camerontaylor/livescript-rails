require 'rails/engine'

module LiveScript
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :ls

      if config.respond_to?(:annotations)
        config.annotations.register_extensions("ls") { |annotation| /#\s*(#{annotation}):?\s*(.*)$/ }
        config.annotations.register_extensions("livescript") { |annotation| /#\s*(#{annotation}):?\s*(.*)$/ }
      end

      initializer :register_livescript do |app|
        app.config.assets.configure do |env|
          env.register_engine '.ls', TiltTemplate
          env.register_engine '.livescript', TiltTemplate
        end
      end
    end
  end
end
