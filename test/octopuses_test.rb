lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'minitest/autorun'
require 'active_support/inflector'
require 'octopuses'

class OctopusesTest < Minitest::Test
  def test_pluralize_octopus
    assert_equal "octopuses", ActiveSupport::Inflector.pluralize("octopus")
    assert_equal "Octopuses", ActiveSupport::Inflector.pluralize("Octopus")
  end

  def test_pluralize_virus
    assert_equal "viruses", ActiveSupport::Inflector.pluralize("virus")
    assert_equal "Viruses", ActiveSupport::Inflector.pluralize("Virus")
  end

  def test_pluralize_platypus
    assert_equal "platypus", ActiveSupport::Inflector.pluralize("platypus")
    assert_equal "Platypus", ActiveSupport::Inflector.pluralize("Platypus")
  end

  def test_singularize_octopuses
    assert_equal "octopus", ActiveSupport::Inflector.singularize("octopuses")
    assert_equal "Octopus", ActiveSupport::Inflector.singularize("Octopuses")
  end

  def test_singularize_viruses
    assert_equal "virus", ActiveSupport::Inflector.singularize("viruses")
    assert_equal "Virus", ActiveSupport::Inflector.singularize("Viruses")
  end

  def test_singularize_platypus
    assert_equal "platypus", ActiveSupport::Inflector.singularize("platypus")
    assert_equal "Platypus", ActiveSupport::Inflector.singularize("Platypus")
  end
end

