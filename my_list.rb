require_relative 'my_enumerable'

# My List Class

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = []

    list.each do |l|
      @list.push(l)
    end
  end

  def each(&block)
    @list.each(&block)
  end
end

# Create a list

list = MyList.new(1, 2, 3, 4)

# Test #all? method

puts(list.all? { |e| e < 5 })

puts(list.all? { |e| e > 5 })

# Test #any? method

puts(list.any? { |e| e == 2 })

puts(list.any? { |e| e == 5 })

# Test #filter method

puts(list.filter(&:even?))
