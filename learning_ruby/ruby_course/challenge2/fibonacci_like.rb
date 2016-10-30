def fibonacci_like?(list)
  is_fibonacci_like = lambda do |list|
    flag = (list[0] + list[1]) == list[2]
    return flag if list.length == 3
    return is_fibonacci_like.call(list[1, list.length]) if flag
    flag
  end

  is_fibonacci_like.call(list)
end
