# binary search algorithm
# time complexity O(log(n))
# space complexity O(1)


class Array

  def bsearch(num)
    middle = self.length / 2
    return middle if self[middle] == num

    if self[middle] > num
      self[0...middle].bsearch(num)
    else
      middle + self[(middle + 1)..-1].bsearch(num)
    end
  end

end
