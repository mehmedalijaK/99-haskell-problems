-- (**) Drop every N'th element from a list.
-- λ> dropEvery "abcdefghik" 3
-- "abdeghk"

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery _ 0 = [] 
dropEvery xxs n = take (n-1) xxs ++ dropEvery (drop n xxs) n