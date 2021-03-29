class ReorganizeString

  class Counter
    attr_accessor :char, :count

    def initialize(char, count)
      @char = char
      @count = count
    end

    def <=>(other)
      count <=> other.count
    end
  end

  def heap_push(arr, x)
    idx = arr.bsearch_index { |y| (y <=> x) >= 0 } || arr.size
    arr.insert(idx, x)
  end

  # @param [String] string
  def solve(string)
    pq = string.chars.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }.map { |k, v| Counter.new(k, v) }.sort!
    return '' if pq.any? { |c| c.count > (string.size + 1) / 2 }

    ans = []
    while pq.size >= 2
      c1 = pq.pop
      c2 = pq.pop
      ans << c1.char << c2.char
      c1.count -= 1
      c2.count -= 1
      heap_push(pq, c1) if c1.count.positive?
      heap_push(pq, c2) if c2.count.positive?
    end

    ans << pq.pop.char if pq.any?

    ans.join
  end

end