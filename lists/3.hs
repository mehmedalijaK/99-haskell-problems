-- (*) Find the K'th element of a list.
-- λ> elementAt [1,2,3] 2
-- 2

elementAt :: [a] -> Int -> a
elementAt [] 0 = error "Out of bounds"
elementAt x 0 = head x
elementAt (x:xs) n 
            | n < 0 = error "Out of bounds"
            | otherwise = elementAt xs $ n - 1
