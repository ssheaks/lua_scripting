-- Function that checks if a number is inside a range [start-end]
function is_value_inside_range(num, range_begin, range_end)
  if num >= range_begin and num <= range_end then
    return true
  end
  return false
end

-- Call the function with some values to test if its correct
if is_value_inside_range(5, 2, 12) then
  print("5 is inside the range [2,12]")
else
  print("5 is not inside the range [2,12]")
end

if is_value_inside_range(2, 4, 6) then
  print("2 is inside the range [4,6]")
else
  print("2 is not inside the range [4,6]")
end
