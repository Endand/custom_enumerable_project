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
    all=true
    for i in (0...self.length)
      if !yield(self[i]) 
        all=false
      end
    end
    all
  end

  def my_any?
    any=false
    for i in (0...self.length)
      if yield(self[i]) 
        any=true
      end
    end
    any
  end

  def my_none?
    none=true
    for i in (0...self.length)
      if yield(self[i]) 
        none=false
      end
    end
    none
  end

  def my_count
    if block_given?
      count=0
      for i in (0...self.length)
        count+=1 if yield(self[i])
      end
      return count
    end
    self.length
  end
  
  def my_map
    arr=[]
    for i in (0...self.length)
        arr[i]=yield(self[i])
    end
    arr
  end

  def my_inject(initial = nil)
    accumulator = initial.nil? ? self[0] : initial
    
    start_index = initial.nil? ? 1 : 0
    for i in start_index...self.length
      accumulator = yield(accumulator, self[i])
    end
    
    accumulator
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
