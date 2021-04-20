require 'test/unit'
require 'longest_valid_parentheses'

class LongestValidParenthesesTest < Test::Unit::TestCase
  include LongestValidParentheses

  def test_solution
    assert_equal 2, solve('(()')
    assert_equal 4, solve(')()())')
    assert_equal 0, solve('')
  end

end

