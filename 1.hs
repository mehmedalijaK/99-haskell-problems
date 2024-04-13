-- -- (*) Find the last element of a list.
-- λ> myLast [1,2,3,4]
-- 4

myLast :: [a] -> a
myLast = last

myLast' :: [a] -> a
myLast' [x] = x
myLast' (_:xs) = myLast' xs 
