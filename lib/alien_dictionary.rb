require 'set'

class AlienDictionary
  # @param [Array<String>] words
  # @return [Array<Integer>] or empty if the order is invalid
  def solve(words)
    # construct indegrees table
    letters = words.map { |w| w.split('').uniq }.flatten.uniq
    indegrees = letters.collect { |c| [c, 0] }.to_h
    adjacency = Hash.new { |hash, key| hash[key] = Set.new }

    # construct adjacency table
    words.map(&:chars).each_cons(2).each do |w1, w2|
      0.upto([w1.length, w2.length].min - 1) do |i|
        c1, c2 = w1[i], w2[i]
        next if c1 == c2

        indegrees[c2] += 1
        adjacency[c1] << c2
        break
      end
    end

    queue = []
    letters.each do |c|
      queue.push(c) if indegrees[c].zero?
    end

    ans = []
    until queue.empty?
      c = queue.shift
      ans.push(c)

      adjacency[c].each do |t|
        indegrees[t] -= 1
        queue.push(t) if indegrees[t].zero?
      end
    end

    return [] if ans.length < letters.length

    ans
  end

end
