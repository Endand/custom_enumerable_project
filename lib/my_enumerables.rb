module Enumerable

  def my_each_with_index
    for i in (0...self.length)
      yield(self[i],i)
    end
    self
  end

  def my_select
    result=[]
    for i in (0...self.length)
      if yield(self[i]) 
        result<<self[i]
      end
    end
    result
  end
  
  def my_all?
    # Complete code
  end

  def my_none?
    # Complete code
  end

  def my_count
    # Complete code
  end
  
  def my_map
    # Complete code
  end

  def my_inject
    # Complete code
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
    self
  end
end
