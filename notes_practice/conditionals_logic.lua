--Example 1. if-else
level = 1
num_lives = 5
score = 0
time_elapsed = 0

-- TODO: the game starts
print(level)
score = 1050

-- when score is greater than 1000 then increase level. use if statement
if (score >= 1000) then
    level = level + 1
    num_lives = 5
    time_elapsed = 0
else
    time_elapsed = time_elapsed + 1
end

print(level)

--Example 2. Elseif

--equality
print(1==2) --tests if 1 equals true
print(1~=2) -- tests if 1 does not equal 2
-- Game menu options using elseif
menu_option = 1

if menu_option == 1 then
    menu_text = "Can I play, Daddy?"
elseif menu_option == 2 then
    menu_text = "Don't hurt me."
elseif menu_option == 3 then
    menu_text = "Bring 'em on!"
elseif menu_option == 4 then
    menu_text = "I am Death incarnate!!"
end
print(menu_text)

-- Example 3. elseif exercise
-- if x and y then (if both are true, we execute)
-- if x or y then (if at least one is true)
--if not x then (if the inverse of x is true)
fighter_name = "Ken"

if string.lower(fighter_name) == "ryu" or 
    string.lower(fighter_name) == "ken" then
    attack_move = "Hadouken"
elseif string.lower(fighter_name) == "chun li" then
    attack_move = "Lightning kick"
elseif string.lower(fighter_name) == "guile" then
    attack_move = "Sonic boom"
elseif string.lower(fighter_name) == "honda" then
    attack_move = "Hundred Hand Slap"
elseif string.lower(fighter_name) == "blanka" then
    attack_move = "Electric shock"
end
print (fighter_name.." attacks with "..attack_move)

-- Conditionals Exercises
-- 1. Create a Lua script that initializes a variable with the age of the user. The program should display a message saying if the user is legally allowed to vote and/or drink according to the current laws of Brazil. A person needs to be at least 16 years old to vote in Brazil, and at least 18 years old to drink.

age = 17

if age >15 and age > 17 then
    message = "You can legally vote and drink."
elseif age > 15 and age < 18 then
    message = "You can legally vote but cannot legally drink."
elseif age < 16 then
    message = "You cannot legally vote or drink"
end

print("You are: "..age..". "..message)

-- 2. Create a script that initializes a variable with the current salary of an employee and another variable with how many years that employee works at the company. The program should calculate and display the bonus that the employee is entitled to get. The bonus is calculated based on a percentage of the employee’s salary, and the percentage depends on how long the employee works at the company. If an employee works more than 5 years for the company, the bonus is 10% of the salary. If the employee works less than 5 years, the bonus is 7% of the salary.

salary = 75000
years_at_company = 6
 if years_at_company < 5 then
    bonus = salary * 0.07
elseif years_at_company >= 5 then
    bonus = salary * 0.10
end
print("Your bonus is: "..bonus)