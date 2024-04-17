
-- (*) Modified run-length encoding.
-- λ> encodeModified "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',
--  Multiple 2 'a',Single 'd',Multiple 4 'e']

data Packed a = Single a | Multiple Int a deriving Show

group :: Eq a => [a] -> [[a]]
group [] = []
group (x:xs) = (x : takeWhile (==x) xs) : group (dropWhile (==x) xs)

encodeModified :: Eq a => [a] -> [Packed a]
encodeModified [] = []
encodeModified xxs = [if length c > 1 then Multiple (length c) (head c) else Single (head c) | c <- group xxs]