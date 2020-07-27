--------------------------------------------------
-- The For Loop
--------------------------------------------------

-- get a random seed so you actually get a random # otherwise you will get the same "random" # each time
math.randomseed(os.time())

-- Create a for loop to generate 500 enemies!!
for count = 1, 500 do
    -- get random position on 800 x 600 resolution screen for game
    enemy_x = math.random(0, 800) -- random x value
    enemy_y = math.random(0, 600) -- random y value

    --Display the two random values
    print(count.." Enemy pos: ("..enemy_x..","..enemy_y..")")
end

-- This does the same thing but the 2 in the for loop is the increment value, so loops through every 2nd #
-- Create a for loop to generate 500 enemies!!
for count = 1, 500, 2 do
    -- get random position on 800 x 600 resolution screen for game
    enemy_x = math.random(0, 800) -- random x value
    enemy_y = math.random(0, 600) -- random y value

    --Display the two random values
    print(count.." Enemy pos: ("..enemy_x..","..enemy_y..")")
end

--------------------------------------------------
-- The While Loop
--------------------------------------------------
-- Set position of the hero
local player_x, player_y = 400, 300

-- Create a for loop to generate 500 enemies!! BUT if there is a conflict with the hero and enemy position then wouldn't have generated the enemy at tha position so wouldn't get the full # of enemies.
for count = 1, 500 do
    -- get random position on 800 x 600 resolution screen for game
    local enemy_x = math.random(0, 800) -- random x value
    local enemy_y = math.random(0, 600) -- random y value
    if (player_x == enemy_x or player_y == enemy_y) then
        print("error")
    else
    --Display the two random values
        print(count.." Enemy pos: ("..enemy_x..","..enemy_y..")")
    end
end

-- Instead use a while loop to generate the correct # of enemies; start with # enemies at 0
local num_enemies = 0
while num_enemies < 500 do
    -- get random position on 800 x 600 resolution screen for game
    local enemy_x = math.random(0, 800) -- random x value
    local enemy_y = math.random(0, 600) -- random y value
    if (player_x == enemy_x and player_y == enemy_y) then
        print("error: clash with hero position")
    else
    --Display the two random values
        print((num_enemies+1).." Enemy pos: ("..enemy_x..","..enemy_y..")")
        -- make sure to increment the # of enemies
        num_enemies = num_enemies + 1
    end
end
print("Thank you, goodbye!")

--------------------------------------------------
-- Loops Activities
--------------------------------------------------
-- 1. Create a Lua script that displays all integer numbers between 1000 and 1, in descending order.

for num = 1000, 1, -1 do
    print(num)
end

-- 2. Create a Lua script that displays 20 random numbers between 1 and 6.

math.randomseed(os.time())
for count = 1, 20 do
    print(math.random( 1,6 ))
end

-- 3. Create a Lua script that displays 100 random numbers between 1 and 6. At the end, the script should display a summary of how many 1’s, 2’s, 3’s, 4’s, 5’s, and 6’s were picked.

math.randomseed(os.time())
local num1 = 0
local num2 = 0
local num3 = 0
local num4 = 0
local num5 = 0
local num6 = 0

for count = 1, 100 do
    local currNum = math.random( 1,6 )
    if currNum == 1 then
        num1 = num1 + 1
    elseif currNum == 2 then
        num2 = num2 + 1
    elseif currNum == 3 then
        num3 = num3 + 1
    elseif currNum == 4 then
        num4 = num4 + 1
    elseif currNum == 5 then
        num5 = num5 + 1
    elseif currNum == 6 then
        num6 = num6 + 1
    end
end
print("Totals: 1: "..num1..", 2: "..num2..", 3: "..num3..", 4: "..num4..", 5: "..num5..", 6: "..num6)

--Alternative using tables (which we haven't learned about yet!!!)
-- Declare a table to save the number of picks for 1, 2, 3, 4, 5, and 6.
count_table = {
    [1] = 0, 
    [2] = 0, 
    [3] = 0,
    [4] = 0,
    [5] = 0,
    [6] = 0
  }
  
  for i = 1, 100 do
    dice_roll = math.random(1, 6)
    -- increment the table value at position
    count_table[dice_roll] = count_table[dice_roll] + 1
  end
  
  -- Display the total amount picked for each number
  for i = 1, 6 do
    print("Number of "..i.." results: "..count_table[i])
  end

-- 4. Create a Lua script that initializes a variable with a currency number value in dollars. The script should break down the value in the optimal number of currency notes that are needed to represent that value. The available notes are 100, 50, 20, 10, 5, and 1 dollar notes. 
local totalCurrency = math.random( 1,500 )
local currencyNum = totalCurrency
local notes1 = 0
local notes5 = 0
local notes10 = 0
local notes20 = 0
local notes50 = 0
local notes100 = 0

while currencyNum > 0 do
    if currencyNum >= 100 then
        notes100 = notes100 + 1
        currencyNum = currencyNum - 100
    elseif currencyNum >= 50 then
        notes50 = notes50 + 1
        currencyNum = currencyNum - 50
    elseif currencyNum >= 20 then
        notes20 = notes20 + 1
        currencyNum = currencyNum - 20
    elseif currencyNum >= 10 then
        notes10 = notes10 + 1
        currencyNum = currencyNum - 10
    elseif currencyNum >= 5 then
        notes5 = notes5 + 1
        currencyNum = currencyNum - 5
    elseif currencyNum >= 1 then
        notes1 = notes1 + 1
        currencyNum = currencyNum - 1
    end
end
print("For "..totalCurrency.." dollars: "..notes100.." notes of 100, "..notes50.." notes of 50, "..notes20.." notes of 20, "..notes10.." notes of 10, "..notes5.." notes of 5, and "..notes1.."notes of 1.")

--Alternative Answer using remainder
-- Get the integer part of the division and the remainder
number_of_100 = totalCurrency // 100
remainder_100 = totalCurrency % 100-- Initialize the currency amount

number_of_50 = remainder_100 // 50
remainder_50 = remainder_100 % 50

number_of_20 = remainder_50 // 20
remainder_20 = remainder_50 % 20

number_of_10 = remainder_20 // 10
remainder_10 = remainder_20 % 10

number_of_5 = remainder_10 // 5
remainder_5 = remainder_10 % 5

number_of_1 = remainder_5

-- Display the number of notes for 100, 50, 20, 10, 5, and 1
print("Total currency is: "..totalCurrency)
print("Total of 100 notes: "..number_of_100)
print("Total of  50 notes: "..number_of_50)
print("Total of  20 notes: "..number_of_20)
print("Total of  10 notes: "..number_of_10)
print("Total of   5 notes: "..number_of_5)
print("Total of   1 notes: "..number_of_1)

-- 5. Create a simple Lua script that reads a sentence and inverts all the words in that sentence.
local sentence = "Holly is my super awesome incredible baby girl"
local inverseSent = ""
local word = ""
for i = 1, #sentence do
    local char = string.sub( sentence, i, i )
    if char ~= " " then
        word = word..char
    elseif char == " " then
        inverseSent = word..char..inverseSent
        word = ""
    end
end
inverseSent = word.." "..inverseSent
print(inverseSent)
-- Alternative solution utilizing a list (array, which we haven't learned about yet!!)
-- Initialize a sentence
text = "The quick fox jumps over the lazy dog."

-- Split string and return a list of words
words = string.gmatch(text, "%S+")

result = ""

-- Loop all words adding each word to the beginning of the final result string
for word in words do
  result = word.." "..result
end

-- Display the final inverted result sentence
print("Inverted sentence: "..result)

-----------------------------
--Menu loop Example--
-----------------------------
math.randomseed(os.time())

--declaring player position in the middle of the screen
local play_x, play_y = 400, 300

-- Enemy position
local en_x, en_y = 0, 0
local user_option = 0

-- Loop while user option is different than 4 (exit)
while user_option ~= 4 do
    --Display a menu on the console
    print("+----------------------------------------")
    print("| Welcome, "..os.date())
    print("+----------------------------------------")
    print("| 1. Generate random enemy position")
    print("| 2. Distance from enemy to player")
    print("| 3. Get angle from enemy to player")
    print("| 4. Exit")
    print("+----------------------------------------")

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
        local d = math.sqrt( (en_x-play_x)^2 + (en_y-play_y)^2 )
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

-------------------------------
-- Bonus activity: loop through getting user # input, 0 exits, and display average of #s entered
-------------------------------
local count = 0
local sum = 0
local num

while num ~= 0 do
    -- read the user option from the keyboard
    print("Enter a number or press 0 to exit:")
    -- to get a blinking cursor waiting for user use io.read()
    num = io.read("*n")
    if num ~= 0 then
        -- add count
        count = count + 1
        -- add sum
        sum = sum + num
    end
end

local avg = sum/count
print("Average of all "..count.." values is "..avg)

-------------------------------
-- Alternative solution using repeat --
-------------------------------
local sum_scores = 0
local num_scores = 0
-- repeat until the user enters the value 0
repeat
    -- read the user option from the keyboard
    print("Enter a number or press 0 to exit:")
    -- to get a blinking cursor waiting for user use io.read()
    local score = io.read("*n")

    if score ~= 0 then
        -- accumulate score
        sum_scores = sum_scores + score
        --increment num_scores
        num_scores = num_scores + 1
    end
until score == 0
local avg_score = sum_scores/num_scores
print("Average of all "..num_scores.." values is "..avg_score)