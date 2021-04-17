module ValidateStackSequences

  def solve(pushed, popped)
    stack = []

    # push each item
    # then check if it match pop
    pushed.each do |item|
      stack << item
      while stack.any? && popped.any? && stack.last == popped.first
        stack.pop
        popped.shift
      end
    end

    stack.empty?
  end

end
