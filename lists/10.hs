-- (*) Run-length encoding of a list.
-- λ> encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]

decode :: Eq a => [a] -> [[a]]
decode [] = []
decode (x:xs) = (x : takeWhile (==x) xs) : (decode . dropWhile (==x) $ xs)

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode xxs = [(length c, head c) | c <- decode xxs]