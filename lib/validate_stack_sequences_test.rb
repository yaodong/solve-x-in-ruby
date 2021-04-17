require 'test/unit'
require 'validate_stack_sequences'

class ValidateStackSequencesTest < Test::Unit::TestCase
  include ValidateStackSequences

  def test_solution
    assert_equal true, solve([1, 2, 3, 4, 5], [4, 5, 3, 2, 1])
    assert_equal false, solve([1, 2, 3, 4, 5], [4, 3, 5, 1, 2])
  end

end
