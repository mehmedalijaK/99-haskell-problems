-- (*) Find the last-but-one (or second-last) element of a list.
-- λ> myButLast [1,2,3,4]
-- 3

myButLast :: [a] -> a
myButLast [] = error "Empty list"
myButLast [x] = error "You need at least two elements"
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs