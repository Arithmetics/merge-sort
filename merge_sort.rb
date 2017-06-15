



def merge(list1, list2)
  result = []
  until list1.length == 0 && list2.length == 0
    if list1.length == 0
      list2.each do |x|
        result.push(x)
      end
    elsif list2.length == 0
      list1.each do |x|
        result.push(x)
      end
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