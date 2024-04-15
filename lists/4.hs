-- (*) Find the number of elements in a list.
-- λ> myLength [123, 456, 789]
-- 3

myLength' :: [a] -> Int
myLength' = length

myLength'' :: [a] -> Int
myLength'' [] = 0
myLength'' (_:xs) = 1 + myLength'' xs