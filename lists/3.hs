-- (*) Find the K'th element of a list.
-- λ> elementAt [1,2,3] 2
-- 2

elementAt :: [a] -> Int -> a
elementAt [] 1 = error "Out of bounds"
elementAt x 1 = head x
elementAt (x:xs) n 
            | n < 1 = error "Out of bounds"
            | otherwise = elementAt xs $ n - 1

elementAt' :: [a] -> Int -> a
elementAt' xxs n 
            | n < 1 || n > length xxs = error "Out of bounds"
            | otherwise = last (take n xxs)