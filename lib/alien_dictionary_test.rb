require 'test/unit'
require 'alien_dictionary'

class SolutionTest < Test::Unit::TestCase
  def test_solution
    sol = AlienDictionary.new
    assert_equal sol.solve(%w[wrt wrf er ett rftt]), %w[w e r t f]
  end
end
