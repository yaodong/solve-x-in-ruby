module LongestValidParentheses

  # @param [String] string
  def solve(string)
    result = 0
    stack = [-1]

    string.each_char.with_index do |char, index|
      if char == '('
        stack << index
      else
        stack.pop if stack.any?
        if stack.any?
          result = [result, index - stack[-1]].max
        else
          stack << index
        end
      end
    end

    result
  end

end
