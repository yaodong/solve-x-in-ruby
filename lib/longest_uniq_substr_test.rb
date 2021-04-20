require 'test/unit'
require 'longest_uniq_substr'

class LongestUniqSubstrTest < Test::Unit::TestCase
  include LongestUniqSubstr

  def test_solution
    assert_equal 3, solve('abcabcbb')
    assert_equal 1, solve('bbbbb')
    assert_equal 3, solve('pwwkew')
    assert_equal 6, solve('ababcdef')
    assert_equal 0, solve('')
  end

end
