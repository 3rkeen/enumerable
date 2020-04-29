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

end

["as", "ads", "das"].my_each_with_index {|x, i| puts x if i.even?}