-- Single line comments are written this way

-- The print function
print('Hello World!')


print('-------------------------------------------------------')
-- Variable and numbers
-- all numbers in Lua is 64 bit floats
number1 = 42
print(type(number1))
number2 = 34.134
print(type(number2))
print('-------------------------------------------------------')

-- We can operate mathematically on all numbers
a = 22 + number1
print(a)
b = a * 12
print(b)
c = b / 34
print(c) -- All numbers are 64 bit floats and hence you get floating division
d = c % 12
print(d)
print('-------------------------------------------------------')

-- Lua has advanced math function avaialable with math module

print(math.abs(5 -7))
print(math.tan(45))
print(math.pi) -- number have precision of upto 13 digits

-- strings

s1 = 'Hello World!!'
s2 = "Hello World Again!!"

-- Concatinate strings

print(s1 .. ' ' .. s2)

-- Long strings, also preserves the new lines

longString = [[ This is
a long long
srting ]]

print('\n' .. longString)

-- By default any undefined variable would have nil value

print(k) -- prints nil because k is undefined

-- We can assign value of a variable to nil to delete it from memory
longString = nil
print(longString)

-- To see and verify if ```longString``` is deleted or not
-- we have a function called ```who()``` which prints all the
-- active variable in program memory while is is called

who()

-- who() doesn't work in a lua script but it works on
-- torch's interactive REPL

-- This prints

-- == User Variables ==
-- [a]                      = 64
-- [b]                      = 768
-- [s2]                     = string : "Hello World Again!!"
-- [s1]                     = string : "Hello World!!"
-- [d]                      = 10.588235294118
-- [number1]                = 42
-- [c]                      = 22.588235294118
-- [number2]                = 34.134
-- =

-- Loops

-- while() loops
print('-------------------------------------------------------')

i = 0
while i < 10 do
    print(i)
    i = i + 1
end
print('-------------------------------------------------------')
-- for loops

for i = 0, 10 do
    io.write(i, '\n') -- we can also use ```io.write()``` instead of print
    -- io.write() doesn't put newline automatically
    -- hence we provide '\n' manually
    -- all the arguments in io.write() should be separated by comma(,)
end

-- reverse for loop
for i = 10, 0, -1 do
    io.write(i, ' ')
end
print('\n-------------------------------------------------------')
i = 1
repeat
   print("value of i:", i)
   i = i + 1
until i > 15
print('-------------------------------------------------------')

-- tables (instead of list, dictionary, array, tuples)
a = {'a', 'b', 'c', 'd', 'e'}
for key, value in ipairs(a) do
    print(key, value)
    -- by default key is the index unless we put something manually
end

-- We can also create tables with keys and values like python dict
-- But tables with only values are ordered while table with both key
-- and values are unordered

a = { a=10, b=20, c=30, d=40 }
for key, values in ipairs(a) do
    print(key, values) -- If you see the order, it's just coincidental
end

-- Defining a table in the form of array/list
t1 = {'a', 2, true, 6, 'hello' }
print(t1)

-- Index access of table elements
print(t1[1]) -- in Lua, indexing starts from 1

-- Appending elements to the table
ret = table.insert(t1, 'Mayukh') -- Inplace operation, returns nil
print(ret == nil)
print(t1)

-- To check length of a table
io.write('The length of the table is: ' .. #t1 .. '\n')

-- We can also do this
t1[#t1 + 1] = 'new value'
print(t1)

