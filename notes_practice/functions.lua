-- Functions are useful when you need to reuse code
-----------------------------
--Function to show the Menu on the screen--
-----------------------------
function display_menu()
    --Display a menu on the console
    print("+----------------------------------------")
    print("| Welcome, "..os.date())
    print("+----------------------------------------")
    print("| 1. Generate random enemy position")
    print("| 2. Distance from enemy to player")
    print("| 3. Get angle from enemy to player")
    print("| 4. Exit")
    print("+----------------------------------------")
end

function get_distance(x1, y1, x2, y2)
    return math.sqrt( (x1-x2)^2 + (y1-y2)^2 )
end

math.randomseed(os.time())

--declaring player position in the middle of the screen
local play_x, play_y = 400, 300

-- Enemy position
local en_x, en_y = 0, 0
local user_option = 0

 -- Loop while user option is different than 4 (exit)
while user_option ~= 4 do
    -- call the display_menu function
    display_menu()
    -- read the user option from the keyboard
    print("Please, select your option:")
    -- to get a blinking cursor waiting for user use io.read()
    user_option = io.read("*n")

    if user_option == 1 then
        en_x = math.random(0,800)
        en_y = math.random( 0,600 )
        print("New enemy pos ("..en_x..","..en_y..")")
    end

    if user_option == 2 then
        local d = get_distance(en_x, en_y, play_x, play_y)
        print("Distance from enemy to player: "..d)
    end

    if user_option == 3 then
        -- use atan2()
        local a = math.atan2((en_y-play_y), (en_x-play_x))
        local a_deg = math.deg( a )
        print("Angle between enemy and player is: "..a_deg.." degrees")
    end
end
print("Thank you, goodbye!")

----------------------------
-- Function exercises --
----------------------------
-- 1. Create a simple Lua function that receives five parameters and returns the result of the average of these five values.

function get_avg_of_five(num1, num2, num3, num4, num5)
    return (num1 + num2 + num3 + num4 + num5)/5
end
local avg = get_avg_of_five(1,2,3,4,5)
print(avg)

--     2. Create a Lua function called student_passed() that also receives five parameters representing the five marks scored by a student in a quiz. The function should calculate the overall average of all marks and return true if the student passed (average greater or equal to 70) or false if the student failed (average less than 70).
    
function student_passed(num1, num2, num3, num4, num5)
    local avg = (num1 + num2 + num3 + num4 + num5)/5
    if avg >= 70 then
        print(true)
        return true
    else
        print(false)
        return false
    end
end
student_passed(55, 75, 65, 68, 81)
student_passed(77, 88, 99, 86, 95)
    
--     3. Create a Lua function that returns if a number is inside a given range. The function should receive three parameters. For example, is_value_inside_range(5, 2, 12) should return true, since 5 is between 2 and 12.
    
function in_range(val, low, high)
    if val < high and val > low then
        print(true)
        return true
    else
        print(false)
        return false
    end
end
in_range(9, 3, 6)
in_range(-2, -5, 7)
    
--     4. Create a simple Lua function that receives a temperature value in Celsius as a parameter and returns the value converted to Fahrenheit. The conversion formula is listed below.
    
function celsius_to_farenheit(cel)
    local far = 9/5*cel + 32
    print(far)
    return far
end
celsius_to_farenheit(19)
celsius_to_farenheit(35)
    
--     5. Create a simple Lua function that receives as a parameter the values of two rectangles (x1, y1, width1, height1, x2, y2, width2, height2) and returns true or false if the two rectangles are colliding with each other or not. This simple collision test falls under what we call AABB (axis-align bounding box). Think of what are the conditions that need to be true for us to safely tell that the first rectangle is colliding with the second one.
function colliding(x1, y1, width1, height1, x2, y2, width2, height2)
    -- find rec1 x axis range
    local x1max = x1 + width1
    print(x1)
    print(x1max)
    -- find rec2 axis range
    local x2max = x2 + width2
    print(x2)
    print(x2max)
    -- if neither end starts before the other then they overlap
    local overlapX = false
    if x1 <= x2max and x2 <= x1max then
        overlapX = true
    end
    print(overlapX)
    local y1min = y1 - height1
    print(y1)
    print(y1min)
    local y2min = y2 - height2
    print(y2)
    print(y2min)
    overlapY = false
    if y1min <= y2 and y2min <= y1 then
        overlapY = true
    end
    print(overlapY)
    if overlapX and overlapY then
        print("rectangles collide")
        return true
    else
        print("rectangles do not collide")
        return false
    end
end
colliding(10, 30, 20, 10, 5, 25, 10, 5)
colliding(20, 30, 20, 10, 5, 15, 10, 5)
colliding(10, 30, 20, 10, 5, 5, 10, 5)

--------------------------
-- Alternate answer --
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