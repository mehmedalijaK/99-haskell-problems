-- (*) Split a list into two parts; the length of the first part is given.
-- λ> split "abcdefghik" 3
-- ("abc", "defghik")

split :: [a] -> Int -> ([a], [a])
split [] _ = ([],[])
split xxs n = splitAt n xxs

split' :: [a] -> Int -> ([a], [a])
split' [] _ = ([],[])
split' xxs n = (take n xxs, drop n xxs)