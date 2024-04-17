-- (*) Remove the K'th element from a list.
-- λ> removeAt 2 "abcd"
-- ('b',"acd")

removeAt :: Int -> [a] -> (a, [a])
removeAt n xxs = (xxs !! (n-1), remove' (n-1) xxs)


remove' :: Int -> [a] -> [a]
remove' _ [] = []
remove' n (x:xs)
        | n == 0 = xs
        | otherwise = x : remove' (n-1) xs