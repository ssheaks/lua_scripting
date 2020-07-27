-- Initialize the employee current salary
emp_salary = 100000.00

-- How many years the employee works for the company
emp_years = 7

-- Calculate bonus
if emp_years >= 5 then
  bonus_percent = 10
else
  bonus_percent = 7
end

-- Calculate the new salary with bonus
new_salary = emp_salary + emp_salary * (bonus_percent / 100)

-- Display the result
print("The new salary with a bonus of "..bonus_percent.."% is "..new_salary)
