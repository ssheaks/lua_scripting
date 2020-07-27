print("Examples of variables")

score = 0 --number

lives = 3

player1_name = "Leeroy Jenkins" --string
player2_name = "Milford Cubicle"

print(type(score)) --number

-- nil
-- number
-- string
-- function
--CFunction
-- userdata
-- table

salary = 10/2
print("the value of the salary is " ..salary)

salary = 15//2 -- // forces an integer
print("the value of the salary is " ..salary)

-- Exercises:
-- 1. Write a Lua Program that receives the value of the name and a salary of the user and calculates and displays the new salary increased by 15%

name = "Sarah"
salary = 250000.00

new_salary = salary * 1.15
print("New salary is: "..new_salary)

-- 2. Initialize a variable with any temperature value in Celsius. Your script should calculate and display the value in Celsius converted to Fahrenheit.

tempC = 22
tempF = 9/5 * tempC + 32
print("the temperature in Farenheit is "..tempF)

-- 3. Create a Lua script to compute and display the result of how much money 1000 euros have grown after three years with a 5 percent interest rate.

money = 1000 * (1 + 0.05)^3
print("your investment has grown to "..money)

-- 4. Create a simple script that initializes a variable with the value of the length of the radius of a circle. The script should compute and display the value of the area of the circle.

radius = 4
area = math.pi * radius^2
print("area of the circle is "..area)

-- Game example for incrementing/decrementing
level = 1
score = 0
num_lives = 5

-- our game running
-- user advances a level
print("current level: "..level)
level = level + 1
print("new level: "..level)

--missile hits the player
print("number of lives: "..num_lives)
num_lives = num_lives - 1
print("lost a life, number of lives left is: "..num_lives)