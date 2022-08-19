module MyEnumerable
  def all?
    result = true
    each { |num| result = false unless yield(num) }
    puts result
  end

  def any?
    result = false
    each { |num| result = true if yield(num) }
    puts result
  end



  def filter; end
end
