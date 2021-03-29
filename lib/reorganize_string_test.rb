require 'test/unit'
require 'reorganize_string'

class ReorganizeStringTest < Test::Unit::TestCase

  def test_solution
    sol = ReorganizeString.new
    assert_equal 'aba', sol.solve('aab')
    assert_equal '', sol.solve('aaab')
  end

end
