require './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*nums)
    @list = nums
  end

  def each
    @list.each { |num| yield(num) if block_given? }
  end
end

# Create our list
puts list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

# Test #any?
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }

# Test #filter
list.filter(&:even?)
