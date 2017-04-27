def merge_sort (array)

  if array.length == 1
    return array
  end

  if array.length > 1

     firstHalf = array[0...(array.length/2)]
     secondHalf = array[array.length/2..-1]

     split_firstHalf = merge_sort(firstHalf)
     split_secondHalf = merge_sort(secondHalf)

   end

    sorted_array = merge(split_firstHalf,split_secondHalf)

end

def merge(left, right)

  sorted_array = []

  total_length = left.length + right.length

  while total_length > sorted_array.length

    if left.length == 0
      right.each {|num| sorted_array << num}

    elsif right.length == 0
      left.each {|num| sorted_array << num}

    elsif left[0] < right[0]
      sorted_array << left[0]
      left.shift

    elsif left[0] >= right[0]
      sorted_array << right[0]
      right.shift

    end

  end
  return sorted_array
end

  merge_sort([5,9,6,3])
