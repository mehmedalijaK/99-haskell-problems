-- (**) Extract a slice from a list.
-- λ> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
-- "cdefg"

slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice xxs n m 
        | n > m = error "n cannot be greater than m"
        | n < 0 = error "n cannot be negative"
        | m > length xxs = error "m cannot be greater than list length"
        | otherwise = drop (n-1) . take m $ xxs 