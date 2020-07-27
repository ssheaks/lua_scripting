-- Initialize a variable with a salary value
employee_salary = 65800.45

-- The new salary is the old salary plus 15% of the old salary
new_salary = employee_salary + (employee_salary * (15 / 100))

print("The new salary incresed by 15% is "..new_salary)

-- A shortcut that some programmers like to use to increase a value
-- by x percent is to multiply the value by 1.x. For example:
-- new_salary = employee_salary * 1.15
