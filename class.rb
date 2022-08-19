require_relative 'Module'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    @list.each {|list| yield(list) if block_given?  }
  end

end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
print list.all? { |e| e < 5 } 
print list.all? { |e| e > 5 }

# Test #any?
print list.any? { |e| e == 2 }
print list.any? { |e| e == 5 }

# Test #filter
list.filter(&:even?)
