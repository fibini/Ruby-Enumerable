module MyEnumerable
  def all?
    result = true
    each { |num| result = false unless yield(num) }
    puts result
  end

  def any?; end

  def filter; end
end
