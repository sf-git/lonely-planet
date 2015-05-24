require_relative 'helper'
require '../lib/parser/taxonomy_source'

class TestLonelyPlanet <  Minitest::Unit::TestCase
  def setup
    @meme = TaxonomySource.new('../test/data/taxonomy.xml')
  end

  def test_that_kitty_can_eat
    @meme.parse()
  end

end