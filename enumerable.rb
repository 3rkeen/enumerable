module Enumerable
    def my_each
        return to_enum :my_each unless block_given?
      for i in self
        yield(i)
    end
    end
  end

 p [1, 2, true, 4, 5].my_all? 