require "octopuses/version"
require "active_support/inflector/inflections"

module Octopuses
  ActiveSupport::Inflector.inflections do |inflect|
    inflect.plural(/(octopus|virus)(es)?$/i, '\1es')
    inflect.plural(/\u{1F419}+$/i, "\u{1F419}\u{1F419}")

    inflect.singular(/(octopus|virus)(es)?$/i, '\1')
    inflect.singular(/\u{1F419}+$/, "\u{1F419}")

    inflect.uncountable(%w(platypus))
  end
end
