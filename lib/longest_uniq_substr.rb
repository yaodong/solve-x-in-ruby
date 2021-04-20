module LongestUniqSubstr

  # @param [String] string
  def solve(string)
    start, result, seen = 0, 0, Hash.new(-1)

    string.each_char.with_index do |char, index|
      if seen.include?(char)
        start = [start, seen[char] + 1].max
      end

      seen[char] = index
      result = [result, index - start + 1].max
    end

    result
  end

end
