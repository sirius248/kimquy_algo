module Sorting
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

  def merge(a, p, q, r)
  
    left = a[p..q]
    right = a[q+1..r]

    left << 1000000000 #sentinel
    right << 1000000000 #sentinel

    i = 0
    j = 0
    k = p
    k.upto(r) do |x|
      if left[i] <= right[j]
        a[x] = left[i]
        i = i + 1
      else
        a[x] = right[j]
        j = j + 1
      end
    end
  end

end

class Array
  include Sorting

  define_method(:swap) do |i,j|
    temp = self[i]
    self[i] = self[j]
    self[j] = temp
  end

  define_method(:selection_sort) do
    0.upto(self.length-1) do |i|
      minIndex = i
      j = i
      j.upto(self.length-1) do |k|
        if self[k] < self[minIndex]
          minIndex = k
        end
      end
      
      if minIndex != i
        swap(minIndex,i)
      end
    end
  end

  define_method(:bubble_sort) do
    swapped = true
    j = 0
    
    while(swapped)
      swapped = false
      j += 1
      0.upto(self.length-j-1) do |i|
        if self[i] > self[i+1]
          temp = self[i]
          self[i] = self[i+1]
          self[i+1] = temp
          swapped = true
        end
      end
    end
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

  define_method(:merge_sort) do
    kimquy_merge_sort(self,0,self.length)
    self.pop
  end

  define_method(:knuth_shuffle) do
    p = Random.new
    0.upto(self.length - 1) do |i|
      temp = p.rand(0..i) 
      swap(temp,i)
    end
  end

  define_method(:shell_sort) do
    h = 1
    while ( h < self.length)
      h = 3*h + 1
    end

    while(h >= 1)
      h.upto(self.length - 1) do |i|
        j = i
        while j >= h && self[j-h] > self[j] 
          swap(j, j-h)
          j -= h
        end 
      end
      h = h/3
    end
  end

end

