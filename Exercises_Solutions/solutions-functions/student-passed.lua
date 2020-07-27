-- Function that receives 5 quiz marks and checks if the student passed
function student_passed(n1, n2, n3, n4, n5)
  student_avg = (n1 + n2 + n3 + n4 + n5) / 5
  -- Pass threshold is 70
  if student_avg >= 70 then
    return true
  else
    return false
  end
end

-- Call the function with some values to test if it returns the correct result
if student_passed(63, 78, 34, 90, 89) then
  print("Student passed!")
else
  print("Student failed!")
end
