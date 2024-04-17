-- (**) Run-length encoding of a list (direct solution).
-- λ> encodeDirect "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',
--  Multiple 2 'a',Single 'd',Multiple 4 'e']

data Packed a = Single a | Multiple Int a deriving Show

group :: Eq a => [a] -> [[a]]
group [] = []
group (x:xs) = (x : takeWhile (==x) xs) : (group . dropWhile (==x) $ xs)

encodeDirect :: Eq a => [a] -> [Packed a]
encodeDirect [] = []
encodeDirect xxs = [if length c > 1 then Multiple (length c) (head c) else Single (head c) | c <- group xxs]