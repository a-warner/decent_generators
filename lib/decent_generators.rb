require 'rails'

module DecentGenerators
  class Railtie < ::Rails::Railtie
    config.app_generators.templates << File.expand_path('../templates', __FILE__)
  end
end
