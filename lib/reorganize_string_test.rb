require 'test/unit'
require 'reorganize_string'

class ReorganizeStringTest < Test::Unit::TestCase
  include ReorganizeString

  def test_solution
    assert_equal 'aba', solve('aab')
    assert_equal '', solve('aaab')
  end

end
