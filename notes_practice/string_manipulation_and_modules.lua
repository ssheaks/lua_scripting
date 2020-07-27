--representing color as a string (hexadecimal)

color = "#7763DD"
print(color)

-- string.gsub stands for global substitutions, below searches for all instances of color, removes "#" and replaces with "" (so nothing)
pure_color = string.gsub(color, "#", "")

print("Pure color: "..pure_color)

--get a substring of a string (so just a portion of the string). string.sub(string, start position, end position)
-- NOTE: indexing starts at 1
pure_color = string.sub( color, 2)
print(pure_color)

-- Use string.len(string) OR #string to get the length
pure_color = string.sub( color, 2, string.len( color ))
print(pure_color) -- 7763DD
print(#color) -- 7

-- string.fing(string, "what you're looking for"). Returns the start and end position of what you're looking for or nil if it's not there.

email = "sarah.sheaks@gmail.com"
print(string.find( email, "@"))
print(string.find( email, "sarah" ))
print(string.find( email, "haras" ))

-- Multi-line Strings. Use double brackets with values separated with ,
sea_level = [[
    1880, 0
    1881, 0.2204
    1882, -0.4409
    1883, -0.2323
]]

sea_level = string.gsub(sea_level, ",", "|")

print(sea_level)

-- Multiple Assignment
-- x = 0
-- y = 0

-- Alternatively can use the multiple assignment below: great for positioning coordinates!!
x, y = 0, 0

x, y = 3, 7
-- swap values!
x, y = y, x

-- Standard Library Modules
--math
print(math.floor( 4.687 ))
print(math.pi)
-- get a random # between 0 and 1
print(math.random())
-- get a random number between lower limit and upper limit
print(math.random( 100, 200 ))

-- get a random seed so you actually get a random # otherwise you will get the same "random" # each time
math.randomseed(os.time())
-- get random position on 800 x 600 resolution screen for game
enemy_x = math.random(0, 800) -- random x value
enemy_y = math.random(0, 600) -- random y value

--Display the two random values
print("Enemy pos: ("..enemy_x..","..enemy_y..")")

-----------------------------------------------------
 -- Exercises --
 ----------------------------------------------------
 -- 1. Create a script in Lua that generates three random values between 0 and 255. Each value represents one component from an RGB color. Google what color is generated when we combine the three random values that Lua picked for (R)ed, (G)reen, and (B)lue.
   
math.randomseed(os.time())
R = math.random( 0, 255 )
print(R)
G = math.random( 0, 255 )
print(G)
B = math.random( 0, 255 )
print(B)
print("RGB("..R..","..G..","..B..")")

-- 2. Create a script that initializes a string value with the email of an user. The program should display if that variable contains a valid email. The requirements for the value to be a valid email are:

-- a) The email should contain an “@” character

-- b) The email should contain a “.” character

-- c) The “@” should occur before the “.” character

-- d) The email should not contain any spaces.
email = "sarahsheaks@gmailcom"
-- Performs some checks to see if the email is valid
at_char = string.find(email, "%@")
dot_char = string.find(email, "%.")
space_char = string.find(email, " ")

-- We add a % in front of the character to avoid Lua replacing those characters
-- with special values.
-- For example "." is a pattern that represents *all characters*

-- Test if we have no spaces but found both @ and .
if (not space_char) and (at_char and dot_char) then
  -- Test if . appears before the @, since .find() return the position
  if at_char < dot_char then
    print("Valid email!")
  else
    print("Invalid. There is a . before the @ sign.")
  end
else
  print("Invalid email! No @ sign, or no . sign, or spaces found.")
end

-- 3. Create a script in Lua that initializes a variable with the password string value. The program should display if the password is valid. For a password to be valid, the password should not contain spaces and should have at least 6 characters.

password = "hell"

-- check if password contains spaces and has at least 6 characters
has_space = string.find( password, " " )
has_6_char = #password
print(has_6_char)

if (has_6_char >= 6) and (not has_space) then
    print("valid password")
elseif (has_space) then
    print("invalid password: cannot contain spaces")
elseif (has_6_char < 6) then
    print("invalid password: must contain at least 6 characters")
end

-- 4. Create a Lua script that initializes a variable with a number between 1 and 6. The script should also generate a random number between 1 and 6 (simulating the roll of a dice). The program should display a message if both numbers are equal or different, meaning that we guessed the random dice roll correctly or not.

math.randomseed(os.time())
guess = math.random( 1, 6 )
print(guess)
roll = math.random( 1, 6 )
print(roll)

if (guess == roll) then
    print("You guessed correctly! The roll was: "..roll)
else
    print("You lose! You guessed: "..guess.." but the roll was: "..roll)
end