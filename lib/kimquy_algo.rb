require "kimquy_algo/version"

module KimquyAlgo
  # Your code goes here...
  def kimquy_quicksort(a, p, r)
    if p < r
      q = partition(a, p, r) 
      kimquy_quicksort(a, p, q)
      kimquy_quicksort(a,q+1,r)
    end
  end

  def partition(a, p, r)
    x = a[p] 
    i = p 
    j = r - 1 
    while true
      while true
        break if a[j] <= x
        j = j -1
      end 

      while true
        break if a[i] >= x
        i = i +1
      end

      if i < j
        a.swap(i,j)
      else
        return j
      end
    end
  end

  def kimquy_merge_sort(a, p, r)
    if p < r
      q = (p+r)/2
      kimquy_merge_sort(a,p,q) 
      kimquy_merge_sort(a,q+1,r)
      merge(a,p,q,r)
    end
  end

  def merge
    
  end

end

class Array
  include KimquyAlgo

  define_method(:swap) do |i,j|
    temp = self[i]
    self[i] = self[j]
    self[j] = temp
  end

  define_method(:quicksort) do
    kimquy_quicksort(self,0, self.length) 
  end

  define_method(:insertion_sort) do
    1.upto(self.length-1) do |j|
      key = self[j]
      i = j - 1
      while i >= 0 && self[i] > key
        swap(i+1,i)
        i = i -1
      end
      self[i+1] = key
    end
  end
end
