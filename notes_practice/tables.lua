-- Menu example using tables
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

--declaring player position in the middle of the screen using table. NOTE: don't have to use brackets/quotes because single word keys.
local player = {x = 400, y = 300}

-- Enemy position using table
local enemy = {x = 0, y = 0}

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
        enemy.x = math.random(0,800)
        enemy.y = math.random( 0,600 )
        print("New enemy pos ("..(enemy.x)..","..(enemy.y)..")")
    end

    if user_option == 2 then
        local d = get_distance(enemy.x, enemy.y, player.x, player.y)
        print("Distance from enemy to player: "..d)
    end

    if user_option == 3 then
        -- use atan2()
        local a = math.atan2((enemy.y-player.y), (enemy.x-player.x))
        -- local a_deg = math.deg( a )
        --convert from radians to degrees in the print statement
        print("Angle between enemy and player is: "..math.deg(a).." degrees")
    end
end
print("Thank you, goodbye!")

-------------------------------------------------
-- Tables example --
-------------------------------------------------
prince_codes = {
    {Page = 1, Line = 2, Word = 2, Code = "W"},
    {Page = 1, Line = 5, Word = 4, Code = "O"},
    {Page = 1, Line = 8, Word = 6, Code = "E"},
    {Page = 1, Line = 10, Word = 6, Code = "S"},
    {Page = 2, Line = 2, Word = 5, Code = "P"},
    {Page = 2, Line = 3, Word = 8, Code = "B"},
    {Page = 2, Line = 6, Word = 6, Code = "Y"},
    {Page = 2, Line = 1, Word = 2, Code = "S"},
    {Page = 3, Line = 4, Word = 9, Code = "K"},
    {Page = 3, Line = 5, Word = 1, Code = "J"},
    {Page = 6, Line = 3, Word = 9, Code = "T"},
    {Page = 3, Line = 1, Word = 7, Code = "B"},
    {Page = 4, Line = 2, Word = 5, Code = "C"},
    {Page = 4, Line = 3, Word = 3, Code = "F"},
    {Page = 4, Line = 6, Word = 1, Code = "E"},
    {Page = 4, Line = 11, Word = 9, Code = "S"},
    {Page = 5, Line = 1, Word = 5, Code = "K"},
    {Page = 5, Line = 2, Word = 1, Code = "M"},
    {Page = 5, Line = 3, Word = 2, Code = "M"},
    {Page = 5, Line = 1, Word = 1, Code = "T"},
    {Page = 6, Line = 1, Word = 1, Code = "P"},
    {Page = 6, Line = 1, Word = 4, Code = "Y"},
    {Page = 6, Line = 2, Word = 2, Code = "K"},
    {Page = 6, Line = 2, Word = 8, Code = "C"},
    {Page = 7, Line = 3, Word = 4, Code = "G"},
    {Page = 7, Line = 3, Word = 8, Code = "S"},
    {Page = 7, Line = 4, Word = 2, Code = "U"},
    {Page = 7, Line = 7, Word = 5, Code = "L"},
    {Page = 10, Line = 1, Word = 2, Code = "J"},
    {Page = 10, Line = 1, Word = 4, Code = "C"},
    {Page = 10, Line = 5, Word = 4, Code = "D"},
    {Page = 10, Line = 3, Word = 3, Code = "T"},
    {Page = 11, Line = 2, Word = 5, Code = "L"},
    {Page = 11, Line = 3, Word = 3, Code = "T"},
    {Page = 11, Line = 4, Word = 1, Code = "T"},
    {Page = 11, Line = 5, Word = 5, Code = "A"},
    {Page = 13, Line = 3, Word = 3, Code = "M"},
    {Page = 13, Line = 4, Word = 5, Code = "C"},
    {Page = 13, Line = 4, Word = 8, Code = "S"},
    {Page = 13, Line = 6, Word = 2, Code = "G"}
}