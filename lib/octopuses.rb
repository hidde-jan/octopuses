require "octopuses/version"

module Octopuses
  class Railtie < ::Rails::Railtie
    initializer "octopuses.fix_pluralizations" do

      ActiveSupport::Inflector.inflections do |inflect|
        inflect.plural(/(octopus|virus)$/i, '\1es')
        inflect.singular(/(octopus|virus)es$/i, '\1')
        inflect.uncountable(%w(platypus))
      end

    end
  end
end
