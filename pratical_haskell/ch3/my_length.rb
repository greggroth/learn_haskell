def my_length(ary)
  if ary == []
    0
  else
    1 + my_length(ary[1..-1])
  end
end

