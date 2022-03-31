require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    n = 0
    while @list[n]
      yield @list[n]
      n += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
#=> #<MyList: @list=[1, 2, 3, 4]>

# Test #all?
list.all? {|e| e < 5}
#=> true
list.all? {|e| e > 5}
#=> false

# Test #any?
list.any? {|e| e == 2}
#=> true
list.any? {|e| e == 5}
#=> false

# Test #filter
list.filter {|e| e.even?}
#=> [2, 4]


