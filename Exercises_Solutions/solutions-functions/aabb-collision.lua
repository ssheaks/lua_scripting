-- Function to test if rectangle 1 is colliding with rectangle 2
function is_colliding(x1, y1, w1, h1, x2, y2, w2, h2)
  if (x2 >= x1 + w1) or 
     (x2 + w2 <= x1) or 
     (y2 >= y1 + h1) or 
     (y2 + h2 <= y1)
  then
    return false
  else
    return true
  end
end

-- Call the function with some values to test
if is_colliding(10, 10, 20, 8, 12, 13, 20, 6) then
  print("Rectangles are colliding.")
else
  print("Rectangles are not colliding.")
end
