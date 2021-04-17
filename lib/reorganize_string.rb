module ReorganizeString

  # @param [String] string
  def solve(string)
    pq = heapify string

    # If the number of occurrences of some character is greater than (N + 1) / 2, the task is impossible.
    return '' if pq.any? { |c| c.n > (string.size + 1) / 2 }

    ans = []
    ans << next_char(pq) while pq.any?
    ans.join
  end

  Item = Struct.new(:char, :n) do
    def <=>(other)
      n <=> other.n
    end
  end

  def heapify(string)
    counts = string.chars.each_with_object(Hash.new(0)) { |char, h| h[char] += 1 }
    counts.map { |k, v| Item.new(k, v) }.sort!
  end

  def heap_push(arr, x)
    idx = arr.bsearch_index { |y| (y <=> x) >= 0 } || arr.size
    arr.insert(idx, x)
  end

  def next_char(pq)
    item = pq.pop
    item.n -= 1
    heap_push(pq, item) if item.n.positive?
    item.char
  end
end
