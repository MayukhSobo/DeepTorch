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