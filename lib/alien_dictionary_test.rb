require 'test/unit'
require 'alien_dictionary'

class SolutionTest < Test::Unit::TestCase
  include AlienDictionary

  def test_solution
    assert_equal solve(%w[wrt wrf er ett rftt]), %w[w e r t f]
  end
end
