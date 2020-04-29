module Enumerable
  def my_each
      return to_enum :my_each unless block_given?
    for i in self
      yield(i)
  end
  end

  def my_each_with_index
      return to_enum :my_each_with_index unless block_given?
    index = 0
      for i in self
      yield(i, index)
      index += 1
  end
  end

  def my_select
  return to_enum :my_select unless block_given?
  result = []  
  self.my_each do |i|
  if yield(i) === true
      result.push(i)
  end
  end
  result
  end

  def my_all?
      
      result = true
      if block_given?
      self.my_each do |i|
          if yield(i) == false
          return result = false
          end
      end
  else
      self.my_each do |i|
          if i == false
          result = false
          end
      end
  
  end
      result
  end
  def my_any?
  
  end
end

p [1, 2, false, 4, 5].my_all?