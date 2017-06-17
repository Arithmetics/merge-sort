
def merge(list1, list2)
  result = []
  until list1.empty? && list2.empty?
    if list1.length == 0
      list2.each do |x|
        result.push(x)
      end
      list2.clear
    elsif list2.empty?
      list1.each do |x|
        result.push(x)
      end
      list1.clear
    else
      if list1[0] < list2[0]
        result.push(list1[0])
        list1.delete_at(0)
      else
        result.push(list2[0])
        list2.delete_at(0)
      end
    end
  end
  result
end


def arr_split(arr)
    arr.each_slice(((arr.length/2.0).ceil)).to_a
end


def merge_sort(arr)
  if arr.length == 1
    arr
  else
    x = arr_split(arr)
    merge(merge_sort(x[0]),merge_sort(x[1]))

  end

end
