module ReorganizeString

  # @param [String] string
  def solve(string)
    heap = heapify string

    # If the number of occurrences of some character is greater than (N + 1) / 2, the task is impossible.
    return '' if heap.any? { |c| c.freq > (string.size + 1) / 2 }

    # pull out char with greatest freq
    ans = []
    ans << next_char(heap) while heap.any?
    ans.join
  end

  Item = Struct.new(:char, :freq) do
    def <=>(other)
      freq <=> other.freq
    end
  end

  def heapify(string)
    counts = string.chars.each_with_object(Hash.new(0)) { |char, h| h[char] += 1 }
    counts.map { |k, v| Item.new(k, v) }.sort!
  end

  def heap_push(heap, item)
    idx = heap.bsearch_index { |y| (y <=> item) >= 0 } || heap.size
    heap.insert(idx, item)
  end

  def next_char(heap)
    item = heap.pop
    item.freq -= 1
    heap_push(heap, item) if item.freq.positive?
    item.char
  end
end
